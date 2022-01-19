*-----------------------------------------------------------
* Title      :  Part 1
* Written by :  Adam Lambert
* Date       :  19/01/2022
* Description:  Input and output of number
*-----------------------------------------------------------

    ORG    $1000
START: 
    LEA message, A1                 
    MOVE.B #14, D0
    TRAP #15
    
    MOVE.B #4, D0
    TRAP #15

    LEA text, A1
    MOVE.B #14, D0
    TRAP #15
    
    MOVE.B #3, D0
    TRAP #15

    SIMHALT             

message dc.b 'Enter your gamer points: ', 0
text dc.b 'Your gamer points are: ', 0

    END    START        


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
