# PROJEKT
## STM8
Startovací strom zdrojových kódů pro výuku mikroprocesorové techniky s kitem
[NUCLEO-8S208RB](https://www.st.com/en/evaluation-tools/nucleo-8s208rb.html).
Strom je určen pro překladač [SDCC](http://sdcc.sourceforge.net/). Standardní
knihovnu pro práci s periferiemi 
[SPL](https://www.st.com/content/st_com/en/products/embedded-software/mcu-mpu-embedded-software/stm8-embedded-software/stsw-stm8069.html)
je třeba (z licenčních důvodů) stáhnou zvlášť ze stránek výrobce a použít
[patch](https://github.com/gicking/STM8-SPL_SDCC_patch).

## Popis:
Projekt měří a signalizuje teplotu.
STM8 napájí a čte na AD převodník výstupní napětí a přepočítává ho na teplotu.
Dále je využita komunikace s počítačem přes sběrnici UART. 
V aplikaci PuTTY jsou zobrazené hodnoty především teploty, ale i napětí AD převodníku a stav signalizace topení. 
Pro signalizaci teploty je využitá LED dioda tlačítko USER zabudované přímo na nucleo kitu a ovládání zajišťuje tlačítko USER.
Druhý obvod není zapojený k STM8 a slouží pro simulaci ohřevu a chlazení. Je realizovaný motorem s žárovkou s napájením 6V. 

## Součástky:
 ### Termistor 9701
- Posílá na výstup napětí. 
- **Měřící napětí:** -40°C až +125°C

### Tlačítko USER 
- Je zabudované na kitu s STM8. Při stisku se povolí nebo zakáže stav indikace LED diody.

### Žárovka
- Slouží jako simulace topení.

### Motor
- Slouží jako větrák, který chladí termistor.

## Zapojení:
* Podle datasheetu musíme správně zapojit krajní napájecí svorky termistoru, jinak dojde k jeho zničení! Prostřední pin zapojíme na pin určený pro ADC.
* Na nepájivé pole v těsné blízkosti termistoru umístíme a zapojíme žárovku. Nad termistor upevníme motor s turbínou, který bude foukat studený vzduch a chladit termistor.
* Zdroj pro tyto výkonové součástky by měl být 6V. V tomto zapojení je realizovaný čtyřmi do série zapojených AA baterií. Součástky by bylo možné zapojit i na 5V, ale nejspíše by měli menší výkon.
* Motor i žárovka jsou ke zdroji připojeny přes spínácí tlačítko pro ruční ovládání. Při sepnutí motoru zkontrolujeme zda nám fouká na správnou stranu, pokud ne, přepólujeme.

## Popis funkce:
* Po připojení Necleo kitu k napájení a správnému připojení UARTU k PuTTY se nám začne každou sekundu zobrazovat stav indikace LED, napětí

##UART
(Universal asynchronous reciever-transmitter) = univerzální asynchronní přijímač-vysílač je počítačová sériová sběrnice sloužící k přenosu dat.  
Dají se nastavovat různé parametry přenosu (rychlost, PORT, VoIP).

##ADC
Převodník, převádějící analogový signál na digitální. 

## Schéma:
![Schéma](docs/Schéma.svg)

## Vývojový diagram:
![Vývojový diagram](docs/Diagram.svg)

## Zhodnocení:
* Projekt představuje topnou soustavu s indikací zvýšené teploty a komunikací přes počítač. 
* **Výhody:** 
    * Teplota je přesná. 
    * Napětí termistoru neruší žádné jiné zařízení. 
    * Teplotu lze regulovat pomocí žárovky a motoru.
* **Nevýhody:**
    * Málo jiných funkcí.
    * Výkonové součástky nejsou ovládány pomocí STM8.
    * Méně použitých periferií.
    * Teplotu není možné snížit pod teplotu místnosti.
* K vůli nedostatku času a neobeznámení, přepočtu napětí na teplotu jsem nebyl schopen sprovoznit termistor s vlastním externím napájením.
* Aby výstup napětí z termistoru nebyl zkreslený nesmí být na stejný zdroj připojený jiný spotřebič.

# Dokumenty:
[here](docs/)


autor: Tomáš Smida