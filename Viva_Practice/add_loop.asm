LXI H,2600
MVI B,00H
MVI C ,08H
MVI A,00H
LOOP:
ADD M
JNC NEXT
INR B
NEXT:
INX H
DCR C
JNZ LOOP
STA 2700H
MOV A,B
STA 2701H
HLT

# ORG 2600H
# DB 55H,FFH, 57H, 1DH,66H,01H,03H,12H
