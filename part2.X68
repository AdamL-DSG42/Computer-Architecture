    ORG $1000
START:                  *Initial instruction

    MOVE.B #9,D1        #Moves the literal number 09 into data register D1
    LEA text, A1        #Loads effective address of address register A1 and stores 'Data Register:' at location in hexadecimal format
    MOVE #14,D0         #Moves the literal number 14 into data register D0
    TRAP #15            #Executes instruction corresponding to value stored at D0 - '14' = Output null terminated string stored at A1
    
    MOVE #3,D0          #Moves the literal number 03 into data register D0
    TRAP #15            #Executes instruction corresponding to value stored at D0 - '03' = Output number stored in D1 as a decimal
    SIMHALT             #Halts simulator
    
text dc.b 'Data Register: ',0   #Stores 'Data Register:' in text, terminates with 0
  
    END START           #End of code, not sure if intentional but was incorrectly tabbed in practical
    

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
