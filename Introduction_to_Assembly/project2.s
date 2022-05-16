.global _start
_start:
	ldr r0, =list @ Making r0 as the base register holding the starting address of list
	ldr r1, [r0] @ register indirect addressing
	ldr r2, [r0, #4] @ pre-index without update
	ldr r3, [r0, #4]! @ pre-index with update (r0 also gets updated this time)
	ldr r4, [r0], #4 @ post-index (r0 also gets updated)
	ldr r5, [r0] @ r5 gets 6 this time

.data
list:
	.word 4, 5, 6, 7, 8, -9 @ Creating 32-bit data (word) with starting location as list in stack 
	
