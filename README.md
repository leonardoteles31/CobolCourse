Cobol

Estrutura de um programa cobol

•	O cobol foi desenvolvido na era dos primeiros mainframes, que dispunham como dispositivos de entrada e saída perfuradores e leitoras de cartões compostos de 12 linhas e 80 colunas.
•	Cada linha de um programa era, na verdade, um cartão de papelão perfurado e o programa completo era uma pilha de cartões.
•	Muitas das características da linguagem são atualmente utilizadas.
•	Coluna 01 a 06 – Marcação de alteração de código
•	Coluna 07 – Indica algo ao compilador .
o	Ex: “*” indica que a linha é um comentário.
o	“-” indica que a linha será de continuação
•	Coluna 08 a 11(Área A) – Reservada para indicar estruturas do programas como Divisões, Seções, Parágrasfos, níveis de variáveis elementares..
•	Colunas 12 a 72 (Área B) – Usada para variáveis complementares, comandos e parte lógica do programa.
•	Colunas 73 a 80 – Usada pelo compilador para identificação e controle do programa.

Divisões de um programa cobol
•   IDENTIFICATION DIVISION.
    •   Responsável por documentar o programa fonte.
    •   PROGRAM-ID é o único item obrigatório dessa divisão.
    •   Mas informações como autor, empresa, data de criação e descrição do objetivo do programa são padrões mínimos de documentação

•   DATA DIVISION.
    •   Responsável por descrever a estrutura lógica dos arquivos e das áreas de trabalho, conhecidas como variáveis.
    •   Define os dados que o programa aceitará como entrada e os que serão produzidos como saída.
    •   Principais seções:
        •   WORKING-STORAGE SECTION.
        •   FILE SECTION.
        •   LINKAGE SECTION.

•   ENVIRONMENT DIVISION.
    •   Responsável por descrever o ambiente físico em que será processado o programa.
    •   Especifica os arquivos do programa e seus locais, formatos de entrada/saída dos dados.
    •   Algumas das seções utilizadas:
        •   Configuration Section
            •   SPECIAL-NAMES DECIMAL-POINT IS COMMA:
        •   Input-Output Section.
            •   SELECT ARQUIVO ASSIGN TO

•   PROCEDURE DIVISION.
    •   Responsável por descrever todos os procedimentos a serem executados pelo programa, tais como operações e manipulação de dados.
    •   Toda lógica de progamação é escrita nessa divisão


Variáveis
    •   Quando for declarar uma variável, ela deve ter um tipo e eles podem ser:
        •   Alfabético, representado por A
        •   Numérico, representado por 9
        •   Alfanumérico, representado por X
    •   O uso de S antes do tipo permite armazenar o sinal negativo.
    •   O uso do V logo após o numero de caracteres numéricos declara quantas casas decimais o número terá.
    