.DATA; DATA SEGMENT
A: .WORD

.TEXT
LDR R6,=A
MOV R1, #0
MOV R2, #1
STR R1,[R6], #4 ;FULL WORD SO 4
STR R2,[R6], #4
MOV R5, #12
SUB R5,R5, #2

LOOP1:
	ADD R0,R1,R2
	MOV R1,R2
	MOV R2,R0
	STR R0,[R6], #4
	SUBS R5,R5,#1
BNE LOOP1

SWI 0X011