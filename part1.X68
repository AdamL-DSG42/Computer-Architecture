    ORG    $1000
START:                  *Initial instruction

    MOVE.B #9,D1        #Moves the literal number 09 into data register D1
    MOVE.B D1,D2        #Moves the contents of data register D1 to D2
    MOVE.B D1,1100      #Moves the contents of data register D1 to memory location 1100 (44C in hexadecimal)
    MOVE.B 1100,D2      #Moves the contents of memory location 44C to data register D2
    MOVE.B 1100,100     #Moves the contents of memory location 44C to memory location 100 (64 in hexadecimal), 64 now contains 09
    
    SIMHALT             #Halts simulator
     
    END    START        #End of code


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
