
led.bin:led.S
	arm-linux-gcc -c -o led.o led.S
	arm-linux-ld -Ttext 0x00000000 led.o -o led_elf
	arm-linux-objcopy -O binary -S led_elf led.bin

clean:
	$(RM) *.o led_elf led.bin