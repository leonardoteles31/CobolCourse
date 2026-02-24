       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTS.
      * DIVISÕES DE UM PROGRAMA COBOL
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
            
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WRK-NAME    PICTURE X(20)       VALUE SPACES.
       01  WRK-BALANCE PICTURE S9(10)      VALUE ZEROS.
       01  WRK-BALANCE-ED  PICTURE Z.ZZZ.ZZZ.ZZ9,99.
      *     O Z INDICA QUE CASO SEJA 0 O VALOR, OMITI-LO

       PROCEDURE DIVISION.
           
           DISPLAY "ENTER YOUR NAME: "
               ACCEPT WRK-NAME.
           DISPLAY "ENTER YOUR BALANCE: "
               ACCEPT WRK-BALANCE.

           DISPLAY WRK-NAME. 
      *    ----------SOMA----------
           ADD 500 TO WRK-BALANCE.
                MOVE WRK-BALANCE TO WRK-BALANCE-ED.
           DISPLAY "BALANCE: " WRK-BALANCE-ED.
           DISPLAY "-----------------------------".

      *    --------SUBTRAÇÃO--------
           SUBTRACT 200 FROM WRK-BALANCE.
                 MOVE WRK-BALANCE TO WRK-BALANCE-ED.
           DISPLAY "BALANCE: " WRK-BALANCE-ED.
           DISPLAY "-----------------------------".

      *    ------MULTIPLICAÇÃO------
           MULTIPLY WRK-BALANCE BY 2 GIVING WRK-BALANCE.
                 MOVE WRK-BALANCE TO WRK-BALANCE-ED.
           DISPLAY "BALANCE: " WRK-BALANCE-ED.
           DISPLAY "-----------------------------".

      *    ------DIVISÃO------
           DIVIDE WRK-BALANCE BY 2 GIVING WRK-BALANCE.
                 MOVE WRK-BALANCE TO WRK-BALANCE-ED.
           DISPLAY "BALANCE: " WRK-BALANCE-ED.
           DISPLAY "-----------------------------".
           STOP RUN.
           