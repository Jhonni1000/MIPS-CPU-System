	LI R3 0x0 
	LI R4 0x0
START:
	NOP
	LI R0 0xBF
	SLL R0 R0 0x0
	NOP
	NOP
	NOP
	LW R0 R1 0x03
	NOP
	BEQZ R1 START
	NOP
LOAD:
	LW R0 R2 0x02
	LI R0 0x38
	CMP R0 R2
	BTNEZ JUDGECOLUMN
	NOP
	ADDIU R3 0x1
	LI R4 0x0
	B START
	NOP
JUDGECOLUMN:
	LI R0 0x10
	CMP R0 R4
	BTNEZ JUDGEROW
	NOP
	ADDIU R3 0x1
	LI R4 0x0
JUDGEROW:
	LI R0 0x0E
	CMP R0 R3
	BTNEZ PRINT
	NOP
	LI R3 0x0
PRINT:	
	LI R0 0xFF
	SLL R0 R0 0x0
	SLL R1 R3 0x4
	ADDU R0 R1 R0
	ADDU R0 R4 R0
	ADDIU R4 0x1
	SW R0 R2 0x0
B START
NOP
JR R7
NOP