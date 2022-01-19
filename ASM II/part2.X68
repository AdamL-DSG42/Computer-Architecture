*-----------------------------------------------------------------------------------------
* Title      :  Part 2
* Written by :  Adam Lambert
* Date       :  19/01/2022
* Description:  Demonstrate indirect addressing and display health using Address Register
*-----------------------------------------------------------------------------------------

    ORG    $1000
START: 
    LEA Health, A2
    MOVE.B #95, Health
    MOVE.B (A2), D1
    
    LEA currentHealth, A1
    MOVE.B #14, D0
    TRAP #15
    
    MOVE.B #3, D0
    TRAP #15
    
    ADD.B #5, (A2)
    MOVE.B (A2), D1
    
    MOVE.B #14, D0
    TRAP #15
    
    MOVE.B #3, D0
    TRAP #15

    SIMHALT             

Health dc.b $10
currentHealth dc.b 'Current Health: ', 0

    END    START  
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
