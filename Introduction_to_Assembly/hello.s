.global _start
_start:
	mov r0, #1 @ 1 -> stdio, 2 -> stderr, 0 -> stdin
	ldr r1, =message
	ldr r2, =len
	
	@ To tell the OS to call write syscall we use Software Interrupt
	@ with R7 as 4
	mov r7, #4
	swi 0

	@ To tell the OS to exit and not slip into .data we use Software Interrupt
	@ with R7 as 1
	mov r7, #1
	swi 0


.data
message:
	.asciz "Hello World!\n"

len = .-message @ To store the length of the string
