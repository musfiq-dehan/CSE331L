.MODEL SMALL
.STACK 100H
.DATA 
.CODE

INPUT1:
    MOV AH, 1H ;AL = INPUT
    INT 21H    ;INTERRUPT
    MOV BL, AL ;BL = AL

INPUT2:
    MOV AH, 1H ;AL = INPUT
    INT 21H    ;INTERRUPT
    MOV BH, AL ;BH = AL

SPACE:
    MOV AH, 2H ;OUTPUT
    MOV DL, 20H;DISPLAY SPACE
    INT 21H    ;INTERRUPT

OUTPUT1:
    MOV AH, 2H ;OUTPUT
    MOV DL, BL ;DL = BL
    INT 21H    ;INTERRUPT

OUTPUT2:
    MOV AH, 2H ;OUTPUT
    MOV DL, BH ;DL = BH
    INT 21H    ;INTERRUPT

EXIT:
    MOV AH, 4CH ;CONTROL RETURNS TO OS
    INT 21H     ;INTERRUPT