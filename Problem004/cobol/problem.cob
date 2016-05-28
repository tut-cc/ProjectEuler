       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROBLEM004.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 I          PIC 9(04).
       01 J          PIC 9(04).
       01 MUL        PIC 9(06).
       01 RESULT     PIC 9(06).
       01 DISPRESULT PIC ZZZZZZZZZZZZZZZ9.
       01 PAL-NUM    PIC 9(06).
       01 PAL-TMP    PIC 9(06).
       01 PAL-REV    PIC 9(06).
       01 PAL-RSLT   PIC 9.
       01 PAL-RMNDR  PIC 9.


       PROCEDURE DIVISION.
         PERFORM VARYING I FROM 999 BY -1 UNTIL I = 0
           PERFORM VARYING J FROM 999 BY -1 UNTIL J = 0
             COMPUTE PAL-NUM = I * J
             IF RESULT < PAL-NUM
               PERFORM PALINDROME
               IF PAL-RSLT = 1
                 MOVE PAL-NUM TO RESULT
               END-IF
             END-IF
           END-PERFORM
         END-PERFORM

         COMPUTE DISPRESULT = RESULT
         DISPLAY DISPRESULT
         STOP RUN.

      * PAL-NUM が回文数であれば PAL-RSLT に 1 を
      * そうでなければ PAL-RSLT に 0 を入れる。
       PALINDROME.
         MOVE PAL-NUM TO PAL-TMP
         MOVE 0 TO PAL-REV
         PERFORM UNTIL PAL-TMP = 0
           DIVIDE PAL-TMP BY 10 GIVING PAL-TMP REMAINDER PAL-RMNDR
           COMPUTE PAL-REV = PAL-REV * 10 + PAL-RMNDR
         END-PERFORM
         IF PAL-NUM = PAL-REV
           MOVE 1 TO PAL-RSLT
         ELSE
           MOVE 0 TO PAL-RSLT
         END-IF.
