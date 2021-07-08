	AREA ONEZERO,CODE, READONLY
ENTRY ;Mark first instruction to execute 
START
	MOV R2,#0
	MOV R3,#0
	MOV R7,#2
	LDR R6,=VALUE
LOOP 	MOV R1,#32 
		LDR R0,[R6],#4
LOOP0 	MOVS R0,R0,ROR #1
		BHI ONES 
ZEROS 	ADD R3,R3,#1; IF CARRY BIT IS 0 THEN INCREMENT THE COUNTER BY 1(R3) 
		B LOOP1 	; BRANCH TO LOOP1
ONES 	ADD R2,R2,#1; IF CARRY BIT IS 1 THEN INCREMENT THE COUNTER BY 1(R2)
LOOP1	SUBS R1,R1,#1 ; COUNTER VALUE DECREMENTED BY 1 ; 
		BNE LOOP0     ;IF NOT EQUAL GOTO TO LOOP0 CHECKS 32BIT
		SUBS R7,R7,#1 ; COUNTER VALUE DECREMENTED BY 1
		CMP R7,#0     ; COMPARE COUNTER R7 TO 0
		BNE LOOP
	NOP 
	NOP 
	NOP
jmp B jmp
VALUE DCD 0X11111111,0XAA55AA55; TWO VALUES IN AN ARRAY 
	END ; Mark end of 