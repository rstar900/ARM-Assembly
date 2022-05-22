.global _start
_start:
	
	mov r0, #1
	mov r1, #2
	
	@ Pushing values of r0 and r1 on stack to preserve them incase they get overwritten by function
	push {r0, r1} 
	bl add_func
	pop {r0, r1} @ Popping r0 and r1's values back
	
	add r3, r0, r1 @ To test values of r0 and r1
	bal exit

add_func:
	mov r0, #5
	mov r1, #7
	add r2, r0, r1
	bx lr
	
exit:
	
