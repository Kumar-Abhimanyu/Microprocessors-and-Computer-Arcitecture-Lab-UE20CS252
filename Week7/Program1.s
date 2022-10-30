.DATA
ZERO: .BYTE 0B11101101
ONE: .BYTE 0B01100000
TWO: .BYTE 0B11001110
THREE: .BYTE 0B11101010
FOUR: .BYTE 0B01100011
FIVE: .BYTE 0B10101011
SIX: .BYTE 0B10101111
SEVEN: .BYTE 0B11100000
EIGHT: .BYTE 0B11101111
NINE: .BYTE 0B11101011
A: .byte 0b11100111
B: .byte 0b00101111
C: .byte 0b10001101
D: .byte 0b01101110
E: .byte 0b10001111
F: .byte 0b10000111

.TEXT
; PROGRAM TO DISPLAY 0 TO F AND F TO 0
begin:
mov R0, #0
mov R2, #0
again:
swi 0X202 ; CHECK WHETHER BUTTON WAS CLICKED OR NOT
cmp r0, #1
beq loop1
cmp R0, #2
beq loop2
b again
loop1:
mov r5, #16
ldr r1, =ZERO
back1:
ldrb r0, [r1]
swi 0x200 ; Set 8 segment display to light up
bl delay
add r1,r1,#1
sub r5, r5,#1
cmp r5, #0
bne back1
b again
loop2:
mov r5,#16
ldr r1,=F
back2:
ldrb r0, [r1]
swi 0x200 ; Set 8 segment ; display to light up 
bl delay
sub r1,r1,#1
sub r5, r5,#1
cmp r5, #0
bne back2
b again
delay:
mov r4, #256000
loop3:
sub r4, r4, #1
cmp r4, #0
bge loop3
mov pc, lr