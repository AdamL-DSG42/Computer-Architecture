*-----------------------------------------------------------------------------------------
* Title      :  Part 3
* Written by :  Adam Lambert
* Date       :  26/01/2022
* Description:  Demonstrate traps
*-----------------------------------------------------------------------------------------
       ORG    $1000
START: 
    
    MOVE.B #2, D0
    TRAP #15
    MOVE.B #0, D0
    TRAP #15 

    MOVE.B #5, D0
    TRAP #15
    MOVE.B #6, D0
    TRAP #15 

    MOVE.B #8, D0
    TRAP #15
    MOVE.B #3, D0
    TRAP #15
    CLR.L D1  

    MOVE.W #65280, D1
    MOVE.B #11, D0
    TRAP #15
    
    LEA MESSAGE, A1
    MOVE.B #13, D0
    TRAP #15
    
    MOVE.B #17, D0
    TRAP #15
    
    LEA OTHERMESSAGE, A1
    MOVE.B #18, D0
    TRAP #15
    
    MOVE.L #16711935, D1
    MOVE.B #21, D0
    TRAP #15
    
    LEA PURPLE, A1
    MOVE.B #14, D0
    TRAP #15
    
    SIMHALT   

MESSAGE dc.b 'This is a message with CR and LF', 0   
OTHERMESSAGE dc.b 'This is a message without CR and LF', 0    
PURPLE dc.b 'This message is PURPLE', 0   

    END    START        
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
