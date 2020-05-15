*CS4080
*5/15/2020
*Written by Nelson Scott

IDENTIFICATION DIVISION.
PROGRAM-ID. CS4080ExampleProgram.

*This code uses the numeric data type in Cobol
*Displays the sign of the value with S, and includes decimals with V
*Create variables with their own number of bits
DATA DIVISION.
    WORKING-STORAGE SECTION.
    01 WS-NUM1 PIC S9 Value 4.
    01 WS-NUM2 PIC S9 VALUE 5.
    01 WS-NUM12 PIC S9.
    01 WS-NUM3 PIC S9(5)V9(2) VALUE 4.12.
    01 WS-NUM4 PIC S9(5)V9(2) VALUE 1.50.
    01 WS-NUM34 PIC S9(5)V9(2).
    01 WS-SUB1 PIC S9(5)V9(2).
    01 WS-BIG PIC S9(2) VALUE 123.
    01 WS-MULT PIC S9(5)V9(3).
    01 WS-DIV PIC S9(5)V9(3).
    01 WS-COM PIC S9(35)V9(3).
    01 WS-COMP1 PIC S9 VALUE 5.
    01 WS-COMP2 PIC S9(5)V9(2) VALUE 5.00.

*Showing some basic functionality of COBOL
*The max amount of bits for a variable is 38, anything more the 
*program cuts off the front number
PROCEDURE DIVISION.

    ADD WS-NUM1 WS-NUM2 TO WS-NUM12. 
    ADD WS-NUM3 WS-NUM4 TO WS-NUM34.

    INITIALIZE WS-SUB1 REPLACING NUMERIC DATA BY WS-NUM34.
    SUBTRACT WS-NUM1 FROM WS-SUB1. 
   
    MULTIPLY WS-NUM3 BY WS-NUM4 GIVING WS-MULT.

    DIVIDE WS-NUM2 BY WS-NUM1 GIVING WS-DIV. 
    
    COMPUTE WS-COM = (WS-NUM1 + WS-NUM2) * WS-NUM12.
    
    DISPLAY "WS-NUM1 : "WS-NUM1.
    DISPLAY "WS-NUM2 : "WS-NUM2.
    DISPLAY "WS-NUM1 + WS-NUM2 = WS-NUM12 : "WS-NUM12.
    DISPLAY "WS-NUM3 : "WS-NUM3.
    DISPLAY "WS-NUM4 :"WS-NUM4.
    DISPLAY "WS-NUM3 + WS-NUM4 = WS-NUM34 :"WS-NUM34.
    DISPLAY "WS-NUM34 - WS-NUM1 = WS-SUB1 : "WS-SUB1.
    DISPLAY "Number is too big : " WS-BIG.
    DISPLAY "WS-NUM3 * WS-NUM4 = WS-MULT : "  WS-MULT. 
    DISPLAY "WS-NUM2 / WS-NUM1 = WS-DIV : " WS-DIV.
    DISPLAY "(WS-NUM1 + WS-NUM2) * WS-NUM12 = WS-COM: " WS-COM.
    
    IF WS-COMP1 = WS-COMP2 THEN
        DISPLAY "5 AND 5.00 ARE EQUAL"
    ELSE
        DISPLAY "VALUES ARE NOT THE SAME"
    END-IF.
STOP RUN.