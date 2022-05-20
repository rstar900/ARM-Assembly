.global _start
.equ endingword, 0xaaaaaaaa @ Constant for stopping the loop
_start:
	
	ldr r0, =list
	ldr r3, =endingword
	ldr r1, [r0]
	
	add r2, r2, r1 @ Add the initial value of list to r2
	
loop:
	ldr r1, [r0, #4]! 
	cmp r1, r3 @ Compare the next value in list with the stopping value
	beq exit @ If that is the case, then exit the loop
	add r2, r2, r1
	bal loop @ Otherwise add new value to r2 and continue the loop 

exit:
	
.data
	list:
		.word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
