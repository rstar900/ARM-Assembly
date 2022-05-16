.global _start
_start:
	mov r0, #5
	mov r1, #7
	add r2, r0, r1 @ r2 = r0 + r1
	mul r3, r0, r1 @ r3 = r0 * r1
	sub r4, r0, r1 @ r4 = r0 - r1 (Negative bit not set in cpsr register)
	subs r5, r0, r1 @ r5 = r0 - r1 (Negative bit set)
	
	mov r0, #0xFFFFFFFF @ A really large hex number
	adds r6, r0, r1 @ r6 = r0 + r1 (Carry bit set in cpsr register)
	adc r6, r2, r1 @ r6 = r2 + r1 + Carry (1 from previous adds operation , r6 should be 20 after this operation)
