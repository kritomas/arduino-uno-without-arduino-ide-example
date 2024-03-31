CROSS_COMPILER=avr-

all : main.c
	$(CROSS_COMPILER)gcc main.c -o avr.elf -mmcu=atmega328p # Compile C for ATMega328P (The microcontroller on the Arduino UNO)
	$(CROSS_COMPILER)objcopy -O ihex avr.elf avr.hex # Convert the ELF into a binary accepted by avrdude

flash :
	avrdude  avrdude -v -patmega328p -carduino -P/dev/ttyACM0 -b115200 -D -Uflash:w:avr.hex:i # Flash the binary onto the Arduino UNO (you may need to adjust the port)