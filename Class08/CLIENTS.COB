       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTS.
      * DIVISÕES DE UM PROGRAMA COBOL
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

            
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WRK-NAME            PICTURE X(20)       VALUE SPACES.
       01  WRK-BALANCE         PICTURE S9(10)      COMP VALUE ZEROS.
       01  WRK-BALANCE-ED      PICTURE Z.ZZZ.ZZZ.ZZ9,99.
       01  WRK-ACCOUNT-TYPE    PICTURE 9.
      *     O Z INDICA QUE CASO SEJA 0 O VALOR, OMITI-LO

       PROCEDURE DIVISION.
           
           DISPLAY "ENTER YOUR NAME: ".
                 ACCEPT WRK-NAME.
           DISPLAY "ENTER YOUR BALANCE: ".
                 ACCEPT WRK-BALANCE.
           DISPLAY "ENTER YOUR ACCOUNT TYPE(1-CPF 2-CNPJ) ? ".
                 ACCEPT WRK-ACCOUNT-TYPE.

           IF WRK-BALANCE GREATER THAN OR EQUAL 5000 AND
              (WRK-ACCOUNT-TYPE EQUAL 1 OR WRK-ACCOUNT-TYPE EQUAL 2)
                   
                   
                   
                 DISPLAY WRK-NAME
                 MOVE WRK-BALANCE TO WRK-BALANCE-ED
                 DISPLAY "BALANCE: " WRK-BALANCE-ED
                   EVALUATE WRK-ACCOUNT-TYPE
                         WHEN 1
                             DISPLAY "CPF"      
                         WHEN 2  
                             DISPLAY "CNPJ"  
                         WHEN OTHER 
                             DISPLAY "THIS ACCOUNT TYPE DOES NOT EXIST!"
                   END-EVALUATE
           ELSE
                   EVALUATE  TRUE
                         WHEN WRK-BALANCE LESS 5000
                               DISPLAY "INCOMPATIBLE BALANCE" 
                         WHEN WRK-ACCOUNT-TYPE NOT EQUAL 1 OR
                              WRK-ACCOUNT-TYPE NOT EQUAL 2
                               DISPLAY "THIS ACCOUNT TYPE DOES NOT"
                               "EXIST!"
                   END-EVALUATE     
           END-IF.  
                 
           STOP RUN.
           