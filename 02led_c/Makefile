led.bin : start.S  led.c
	arm-linux-gcc -c -o start.o start.S
	arm-linux-gcc -c -o led.o led.c
	arm-linux-ld -Ttext 0x0000000 start.o led.o -o led_elf
	arm-linux-objcopy -O binary -S led_elf led.bin
	arm-linux-objdump -D -m arm  led_elf > led.dis
clean:
	rm -f led.dis led.bin led_elf *.o