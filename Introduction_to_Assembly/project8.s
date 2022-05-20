.global _start
_start:

	mov r0, #3
	mov r1, #2
	
	@ There are other such instructions like addge, addeq, subeq, etc.
	cmp r0, r1
	movge r2, #10 @ move 10 to r2 only if r0 >= r1
	movlt r2, #5 @ opposite of above
	@ Saves making a separate branch for simple instructions
