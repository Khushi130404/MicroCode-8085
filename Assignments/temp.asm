MVI B,0FH
MVI A,0FH
MVI C,00H
CPI 10H
JNC LAB
CPI 0AH
JNC LAB1
STA C050H
HLT
LAB1:
ADI 06H
STA C050H
HLT
LAB:
ANI F0H
RLC
RLC
RLC
RLC
MOV C,A
MVI A,00H
LOOP:
ADI 06H
DCR C
JNZ LOOP
MOV C,A
MOV A,B
SUB C
STA C050H
HLT