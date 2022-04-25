#include "stm8s.h"
#include "milis.h"
#include <stdio.h>
#include "../lib/uart.c"
#include "spse_stm8.h"

#define _ISOC99_SOURCE
#define _GNU_SOURCE

#define BTN_PORT GPIOE
#define BTN_PIN GPIO_PIN_4
#define BTN_PUSH (GPIO_ReadInputPin(BTN_PORT, BTN_PIN)==0)

#define LED_PORT GPIOC
#define LED_PIN  GPIO_PIN_5
#define LED_REVERSE GPIO_WriteReverse(LED_PORT, LED_PIN) 
#define LED_HIGH GPIO_WriteHigh(LED_PORT, LED_PIN) 
#define LED_LOW GPIO_WriteLow(LED_PORT, LED_PIN) 

void setup(void)
{
    init_milis();

    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
    
    GPIO_Init(BTN_PORT, BTN_PIN, GPIO_MODE_IN_FL_NO_IT);
    GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_LOW_SLOW);

    // inicializace ADC //
    // na pinech/vstupech ADC_IN2 (PB4) a ADC_IN3 (PB5) vypneme vstupní buffer
    ADC2_SchmittTriggerConfig(ADC2_SCHMITTTRIG_CHANNEL4, DISABLE);
    ADC2_SchmittTriggerConfig(ADC2_SCHMITTTRIG_CHANNEL5, DISABLE);

    // při inicializaci volíme frekvenci AD převodníku mezi 1-6MHz při 5V napájení
    // nastavíme clock pro ADC (16MHz / 4 = 4MHz)
    ADC2_PrescalerConfig(ADC2_PRESSEL_FCPU_D4);

    // volíme zarovnání výsledku (typicky vpravo, jen vyjmečně je výhodné vlevo)
    ADC2_AlignConfig(ADC2_ALIGN_RIGHT);
    
    // nasatvíme multiplexer na některý ze vstupních kanálů
    ADC2_Select_Channel(ADC2_CHANNEL_4);
    // rozběhneme AD převodník
    ADC2_Cmd(ENABLE);
    // počkáme než se AD převodník rozběhne (~7us)
    ADC2_Startup_Wait();
}

int main(void){
    uint32_t time = 0;
    uint32_t time_btn = 0;
    uint32_t time_pulse = 0;
    uint16_t ADC;
    uint16_t voltage;
    uint16_t temp;
    uint8_t state = 0;
    
    setup();
    init_uart();
    
    while (1) {

        ADC = ADC_get(ADC2_CHANNEL_4);
        voltage = ((uint32_t)3300 * ADC + 512) / 1024;
        temp = ((uint32_t)33000 * ADC - 4096000 + 99840) / 19968;

        if (state == 1 && milis() - time > 1000){         
                printf("HEATER ENABLED\t\t U = %dmV\t T = %d,%d °C  \r\n", voltage, temp/10, temp%10);
                time = milis();       
        }
        else if (state == 0 && milis() - time > 1000){
                printf("HEATER DISABLED\t\t U = %dmV\t T = %d,%d °C  \r\n", voltage, temp/10, temp%10);
                time = milis();      
        }

        if (BTN_PUSH && milis() - time_btn > 500){
            state ++;
            if (state == 1) {
                LED_HIGH;
            }
            else {
            LED_LOW;
            }
            time_btn = milis();
        }

        if (state > 1){
            state = 0;
        }

        if (state == 1 && temp/10 > 27 && temp/10 < 30){
            if (milis() - time_pulse > 100){
                LED_REVERSE;
                time_pulse=milis();
            }
        }
        else if (state == 1 && temp/10 > 30){
            if (milis() - time_pulse > 50){
                LED_REVERSE;
                time_pulse=milis();
            }
        }
        else if (state ==1 && temp/10 < 25){
            LED_HIGH;
        }
    }
}