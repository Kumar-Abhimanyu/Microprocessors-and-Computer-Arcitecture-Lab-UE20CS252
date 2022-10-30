;Prog to transfer a block of data from location A to B using BYTE

.data
	A: .byte 10,20,30,40,50,60,70,80,90,100
	B: .byte 0,0,0,0,0,0,0,0,0,0

.text
	LDR r1, =A
	LDR r2, =B
	MOV r5, #1 ;Count register
	
	loop: 
		LDRB r3, [r1]
		STRB r3, [r2]
		ADD r1, r1, #1 ;Address of next data
		ADD r2, r2, #1
		ADD r5, r5, #1
		CMP r5, #11
		BNE loop
	SWI 0X011 ; Logical end of the program
.end