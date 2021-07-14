	AREA ASCENDING , CODE, READONLY
ENTRY              ;Mark first instruction
START
	MOV R8,#4      ;Initialising counter to 4
	LDR R2,=CVALUE ;Code region
	LDR R3,=DVALUE ;Data region
LOOP0
	LDR R1,[R2],#4 ;Loading values from code region
	STR R1,[R3],#4 ;Storing values to data region 
	SUBS R8,R8,#1  ;Decrementing counter
	CMP R8,#0      ;Compare counter to 0
	BNE LOOP0      ;Loop back till array ends
START1 MOV R5,#3
	   MOV R7,#0
       LDR R1,=DVALUE
LOOP
	LDR R2,[R1],#4 
	LDR R3,[R1] 
	CMP R2,R3 
	BGT LOOP2 
	STR R2,[R1],#-4 
	STR R3,[R1]
	MOV R7,#1 
	ADD R1,#4
LOOP2
	SUBS R5,R5,#1 
	CMP R5,#0 
	BNE LOOP 
	CMP R7,#0 
	BNE START1
	NOP 
	NOP
	NOP
CVALUE
	DCD 0X44444444
	DCD 0X11111111
	DCD 0X33333333
	DCD 0X22222222
	AREA DATA1,DATA,READWRITE
DVALUE
	DCD 0X00000000
	END

