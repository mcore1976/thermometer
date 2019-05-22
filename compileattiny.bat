del main.hex
del main.elf
del main.obj
avr-gcc -Wall -g -Os -mmcu=attiny85 -o main.bin main.c
avr-size -C main.bin
avr-objcopy -j .text -j .data -O ihex main.bin main.hex
avrdude -p attiny85 -c usbasp -U flash:w:main.hex:i -F -P usb