       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTS.
      * DIVISÕES DE UM PROGRAMA COBOL
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WRK-NAME    PICTURE X(20)       VALUE SPACES.
       01  WRK-BALANCE PICTURE S9(05)      VALUE ZEROS.

       PROCEDURE DIVISION.
           
           DISPLAY "ENTER YOUR NAME: "
               ACCEPT WRK-NAME.
           DISPLAY "ENTER YOUR BALANCE: "
               ACCEPT WRK-BALANCE.
      *    ----------SOMA----------
           ADD 500 TO WRK-BALANCE.
           DISPLAY WRK-NAME WRK-BALANCE.
           DISPLAY "SALDO: " WRK-BALANCE.
           
      *    --------SUBTRAÇÃO--------
           SUBTRACT 200 FROM WRK-BALANCE.
           DISPLAY WRK-NAME WRK-BALANCE.
           DISPLAY "SALDO: " WRK-BALANCE.
           STOP RUN.
           