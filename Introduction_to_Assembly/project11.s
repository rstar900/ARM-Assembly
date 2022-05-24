.equ SWITCHES, 0xff200040 @ Address of switches in memory
.equ LEDS, 0xff200000 @ Address of LEDs in memory

.global _start
_start:
	
	ldr r0, =SWITCHES
	ldr r1, =LEDS
	
	ldr r2, [r0] @ Read switches
	str r2, [r1] @ Write this value to LEDs output
	
	bal _start @ Keep looping to update the LEDs as per Switches
