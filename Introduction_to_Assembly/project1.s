.global _start
_start:

mov r0, #30 @ moving 30 (decimal) to r0
mov r1, #0x30 @ moving 0x30 (Hexadecinmal) to r1

mov r7, #1 @ Need to put 1 in r7 for system call for exit
swi 0 @ Software Interrupt (to handover control to OS for handling the system call)
