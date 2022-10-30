;Write a Program to find the sum of N data items in the memory. Store the result in the memory locations. Use BYTE.

.data
	A: .byte 0x10, 0x20, 0x30, 0x40, 0x50, 0x60, 0x70, 0x80, 0x90, 0x100
	SUM: .byte 00
.text
	LDR r1, =A
	LDR r2, =SUM
	MOV r4, #0 ;Initialize with zero
	MOV r5, #1 ;Count register

	loop:
		LDRB r3, [r1]
		ADD r4, r4, r3
		ADD r1, r1, #1
		ADD r5, r5, #1
		CMP r5, #11
	BNE loop
	STRB r4, [r2]
	SWI 0X011
.end