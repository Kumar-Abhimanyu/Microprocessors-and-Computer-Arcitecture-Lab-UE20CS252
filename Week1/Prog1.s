;Write a program in ARM7TDMI to copy a block of N data items from location A to B (Do not use LDM/STM)

.data
	A: .HWORD 10,20,30,40
	B: .HWORD 0,0,0,0
.text

    	LDR r1, =A
    	LDR r2, =B
	MOV r5, #1 ;Count register
    	loop:
        	LDRH r3, [r1]
        	STRH r3, [r2]
        	ADD r0, r0, #2 ;Address to the next data
       		ADD r1, r1, #2
		ADD r5, r5, #1 ;Increment the count register
        	CMP r5, #5
    	BNE loop
	SWI 0X011
.end