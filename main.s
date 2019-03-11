.syntax unified

.word 0x20000100
.word _start

.global _start
.type _start, %function
_start:
	// write the value of # to reg
	movs 	r0,	#100
	movs	r1,	#101
	movs	r2,	#102

	// the reference set 
	push	{r0,r1,r2}
	pop	{r3,r4,r5}
	
	// the comparison set
	push	{r2,r0,r1}
	pop	{r6,r7,r8}

	b	sleep

sleep:
	nop
	b	.
