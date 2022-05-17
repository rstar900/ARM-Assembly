.global _start
_start:
	
	@Logical Shift Left (LSL) and Logical Shift Right (LSR)
	mov r0, #10
	lsl r0, #1 
	lsr r0, #1
	
	@ Rotation is only in Right (For Left use 32-n Right roatations)
	mov r1, #5
	ror r1, #1
	
	@ We can combine LSL, LSR, ROR commands into MOV 
	mov r2, r0, lsl #1
	mov r3, r0, lsr #1
	mov r1, #5
	mov r4, r1, ror #1
