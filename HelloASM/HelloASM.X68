*Understand loops better

    ORG    $1000
START: 
    
    MOVE.B #100, $2000 

    MOVE.B  #0, D0
    
NEXT:
    ADD #1, D0
    
    CMP #1, D0 
    BGT CALL_HEALTH_REDUCTION
    
DISPLAY: 

    CMP #5, D0 
    BNE NEXT

    MOVE.B $2000, D1
    CMP #0, D1
    BLE LOSS
    
    LEA WINMESSAGE, A1
    MOVE.B #14, D0
    TRAP #15
    BRA END
    
CALL_HEALTH_REDUCTION:
    BSR HEALTH_REDUCTION
    BRA DISPLAY

HEALTH_REDUCTION:
    SUB.B #25, $2000 
    RTS
    
LOSS:
     LEA LOSSMESSAGE, A1       
     MOVE.B #14, D0             
     TRAP #15
     BRA END
     
END:
    SIMHALT  

WINMESSAGE dc.b 'You Win!', 0
LOSSMESSAGE dc.b 'You Lose!', 0

    END    START  


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
