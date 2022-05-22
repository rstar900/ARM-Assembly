.global _start
_start:
	
	mov r0, #5
	mov r1, #1
	bl add_func @ Jump to a simple add function and store the return address in link register 
	
	mov r3, #1 @ Just to check whether it returns here
	bal exit @ And finally exit
	
	
add_func:
	
	add r2, r0, r1
	bx lr @ Return to the location stored in link register
	
exit:
