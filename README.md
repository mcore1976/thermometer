Digital thermometer with  ATTINY85/4X and Nokia 5110 LCD module
with low power consumption on 2xAA batteries
(C) Adam Loboda 2018

to see how it works - look here https://www.youtube.com/watch?v=r6nF1iJ2r-M

Bill of Materials :
1. ATTINY85 (or ATTINY45, the code is less than  2048 byte long). 
2. Analogue themperature sensor LM36/TMP36 (temp range is -50 - 100st C degrees) or LM35 (range is 0-100st C)
3. Arduino module LCD Nokia 5510/3110 ( resolution 84x48, chip  PCD 8544)
4. Capacitors 100nF + 10 uF (optional)

Features :

- powered by 2 x battery AA (LR6). LCD module requires 3.3V power
- current consumption is 2-2.5 mA
- ATTINY goes into deep sleep - Power Saving Mode - after measurement is done and screen updated on LCD Nokia
- works longer than 1 month on ordinary AA batteries
- Measurements are done once per 4 seconds
- Fonts can be edited in PROGMEM
- If using TMP36 temperature sensors shows also negative temperatures (check the code !!!)

LCD Nokia 5110/3110 code borrowed from  : https://blog.thegaragelab.com/nokia-5110-lcd-displays-on-the-attiny/
TMP36/LM35 code borrowed from : http://blog.podkalicki.com/100-projects-on-attiny13/


How to connect :
</BR>
MCU ATTINY13/85/4X PINs :

1 (ADC0) PB5 - Not Connected

2 (ADC3) PB3 - to Vout of sensor LM35 / TMP36 

3 PB4 - to CLK pin of  Nokia 5110 LCD

4 GND - to "-" of 2x AA battery pack

5 PB0 - to RST/RESET of Nokia 5110 LCD

6 PB1 - to DC pin of Nokia 5110 LCD

7 PB2 - to DIN / DATA IN pin of Nokia 5110 LCD

8 VCC - to "+" of 2x AA battery pack

To pins #4 and pin#8 of MCU optionaly attach capacitors 100nF/10uF

</BR>

Analogue temperature sensor LM35 / TMP36 pins :

VSS - to "+" of 2xAA battery pack

Vout - to pin #2 of ATTINY

GND - to "-" of 2xAA battery pack

</BR>
LCD Nokia 5110 pins :

CS - to "-" of 2xAA battery pack

BL - to "-" of 2xAA battery pack

DC - to pin #6 of attiny 

RESET / RST- to pin #5 of attiny

DIN/DATA IN - to pin #7 of attiny

CLK - to pin #3 of attiny

VCC - to "+" of 2xAA battery pack

GND - to "-" of 2xAA battery pack


 COMPILATION ON LINUX PC :

To upload program code to the chip using cheapest USBASP programmer (less than 2 USD on eBay/Aliexpress) look at this page : http://riteshkhanna.com/2016/04/20/programming-attiny45attiny85-with-a-usbasp-avr-programmer/

The script attached in repository ( "compileattiny.txt") can be used to upload data to the chip if you have Linux machine with following packages : "gcc-avr", "binutils-avr" (or sometimes just "binutils"), "avr-libc", "avrdude" and optionally "gdb-avr"(debugger only if you really need it) . For example in Ubuntu download these packages using command : "sudo apt-get install gcc-avr binutils-avr avr-libc gdb-avr avrdude". After doing it you will be able to run compilation the script from the directory you have downloaded github files by commands:

    "sudo chmod +rx compileattiny.txt" and "sudo ./compileattiny.txt"
  

COMPILATION ON WINDOWS 10 PC :

If you have Windows 10 machine - follow this tutorial to download and install full AVR-GCC environment : http://fab.cba.mit.edu/classes/863.16/doc/projects/ftsmin/windows_avr.html and use "compileattiny.bat" files for compilaton in the directory where you have downloaded mainX.c files. You have to be logged as Windows Administrator and run "cmd" from search window to do that. Then use commands like "cd XXXXX" to change working directory to get to downloaded source files.
