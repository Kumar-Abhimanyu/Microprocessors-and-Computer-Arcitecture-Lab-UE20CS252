.text   
        MOV r0, #10
        ANDs r0, r0, #1
        
        BEQ condition
                MOV r1, #1
                B exit
        condition:
                MOV r2, #1
        exit:
                SWI 0x011
.end