global _start
_start:
	
  mov r3, #0 @ Just to clear r3, in case it is already set
	mov r0, #3
	mov r1, #2
	
	cmp r0, r1 @ Essentially r0 - r1 and setting flags in cpsr register
	
	bgt greater @ If r0 is greater than r1, jump to greater label (Other conditional jumps like blt, ble, beq, bne exist)
	
	bal less_or_equal @ just go to less_or_equal label (ofcourse if earlier branch was not taken)
	
greater:
	mov r2, #10
	bal default @ to avoid falling into less_or_equal branch as assembly is sequential in nature
		
less_or_equal:
	mov r2, #5
	
default:
	mov r3, #1 @ Just to indicate that we reached the end of our program 
