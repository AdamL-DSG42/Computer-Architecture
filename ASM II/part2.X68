*-----------------------------------------------------------------------------------------
* Title      :  Part 2
* Written by :  Adam Lambert
* Date       :  19/01/2022
* Description:  Demonstrate indirect addressing and display health using Address Register
*-----------------------------------------------------------------------------------------

    ORG    $1000
START: 
    LEA Health, A2
    LEA HealthMessage, A1
    
    *Output intial health
    MOVE.B (A2), D1
    MOVE.B #17, D0
    TRAP #15
    
    *Add 5 to health
    ADD #5, D1
    MOVE.B D1, Health
    
    MOVE.B #17, D0
    TRAP #15
    
    *Subtract 5 from health
    MOVE.B (A2), D1
    SUB #5, D1
    MOVE.B D1, Health
    
    MOVE.B #17, D0
    TRAP #15
    
    *Multiply health by 2
    MOVE.B (A2), D1
    MULU #2, D1
    MOVE.B D1, Health

    MOVE.B #17, D0
    TRAP #15
    
    *Divide health by 2
    MOVE.B (A2), D1
    DIVU #2, D1
    MOVE.B D1, Health
    
    MOVE.B #17, D0
    TRAP #15

    SIMHALT             

Health dc.b $10
HealthMessage dc.b 'Health: ', 0

    END    START  


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
