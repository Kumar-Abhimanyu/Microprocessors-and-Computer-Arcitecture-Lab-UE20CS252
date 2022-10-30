; Multiply two matrices of order 3 using MLA and MUL
; c[i][j] = c[i][j] + a[i][j]*b[i][j]
; R3 - Row number
; R4 - Column number
; R10 - Number of elements in a row - Here, 3
; R0 - First element of the array
; Logic : R3*R10 + R4

.DATA
A: .WORD 1,2,3,4,5,6,7,8,9
B: .WORD 1,2,3,4,5,6,7,8,9
C: .WORD 0,0,0,0,0,0,0,0,0

.TEXT
LDR R0, =A
LDR R1, =B
LDR R2, =C

MOV R3, #0
MOV R4, #0
MOV R10, #3

LOOP1: 
MLA R11,R3,R10,R4
MOV R11,R11,LSL #2

LDR R5,[R0,R11]
LDR R6,[R1,R11]

ADD R7,R5,R6
STR R7,[R2,R11]
ADD R4,R4,#1
CMP R4,#3

BNE LOOP1

MOV R4,#0
ADD R3,R3,#1
CMP R3,#3
BNE LOOP1
SWI 0X011