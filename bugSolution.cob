01  WS-DATA-AREA.          
    05  WS-COUNT PIC 9(5) VALUE 0. 
    05  WS-TABLE OCCURS 100 TIMES. 
       10  WS-ITEM PIC X(20). 
       10  WS-QTY PIC 9(3). 

PROCEDURE DIVISION. 
           PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > 100 
               MOVE "ITEM" & WS-COUNT TO WS-ITEM(WS-COUNT) 
               MOVE WS-COUNT TO WS-QTY(WS-COUNT) 
           END-PERFORM. 
           DISPLAY "Table populated successfully" 
           STOP RUN.