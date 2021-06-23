	AREA FACTORIAL,CODE,READONLY
ENTRY
START
		MOV R0,#5	    ; fisrt instruction
		MOV R1,R0 		; copying ro value to r1
FACT 	SUBS R1,R1,#1   ; decrementing r1 by 1
		CMP R1,#1	    ; comparing r1 with 1
		BEQ STOP
		MUL R3,R0,R1
		MOV R0,R3
		BNE FACT
STOP
		NOP
		NOP
		NOP
	END