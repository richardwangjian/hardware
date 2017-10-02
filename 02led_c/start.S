.text
.global _start
_start:
	ldr r0, =0x53000000
	mov r1, #0x0
	str r1, [r0]			@写入0，禁止WATCHDOG，否则CPU会不断重启

	ldr sp, =1024*4         @设置堆栈，注意：不能大于4k, 因为现在可用的内存只有4K

	bl main                 @调用C程序中的main函数

loop:
	b loop