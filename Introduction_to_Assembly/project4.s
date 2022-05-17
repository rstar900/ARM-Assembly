.global _start
_start:

	mov r0, #0xAA
	mov r1, #0xFF
	
	@ AND Operation (without and with cpsr bit setting)
	and r2, r0, r1
	ands r2, r0, r1
	
	@ OR and Exclusive OR
	orr r3, r0, r1
	eor r4, r0, r1
	
	@ Negating the bits of a register using mvn (Move Negative)
	mvn r0, r0 
	
	@ To only affect specific bits and set rest to 0
	and r0, r0, #0x000000FF
