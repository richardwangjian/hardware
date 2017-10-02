.text

.global _start
_start:
	ldr r0, =0x56000050
	ldr r1, [r0]
	bic r1, #0x0300
	orr r1, #0x0100
	str r1, [r0]			@设置GPF4为输出口

	ldr r0, =0x56000054
	ldr r1, [r0]
	bic r1, #0x10
	str r1, [r0]			@设置GPF4输出为0

loop:
	b loop