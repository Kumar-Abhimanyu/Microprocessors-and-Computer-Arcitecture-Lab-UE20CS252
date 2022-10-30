; Write a program in ARM7TDMI to find the sum of N natural numbers. Store the result in the memory location.

.data
	A: .WORD 1,2,3,4,5,6,7,8,9
	SUM: .WORD 00
.text
	LDR r1, =A
	LDR r2, =SUM
	MOV r4, #0 ;Initialize with zero
	MOV r5, #1 ;Count register

	loop:
		LDR r3, [r1]
		ADD r4, r4, r3
		ADD r1, r1, #4
		ADD r5, r5, #1
		CMP r5, #11
	BNE loop
	STR r4, [r2]
	SWI 0X011
.end
