       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROBLEM005.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 I          PIC 9(16).
       01 M          PIC 9(16).
       01 N          PIC 9(16).
       01 TEMP       PIC 9(16).
       01 DUMMY      PIC 9(16).
       01 LCD        PIC 9(16) VALUE 1.
       01 DISPRESULT PIC ZZZZZZZZZZZZZZZ9.

       PROCEDURE DIVISION.
         PERFORM VARYING I FROM 1 BY 1 UNTIL I > 20
      *    ユークリッドの互除法
           IF I < LCD
             MOVE LCD TO M
             MOVE I   TO N
           ELSE
             MOVE I   TO M
             MOVE LCD TO N
           END-IF
           PERFORM UNTIL N = 0
             MOVE N TO TEMP
             DIVIDE M BY N GIVING DUMMY REMAINDER N
             MOVE TEMP TO M
           END-PERFORM
      *    最大公約数から最小公倍数を求める
           COMPUTE LCD = I * LCD / M
         END-PERFORM

         MOVE LCD TO DISPRESULT
         DISPLAY DISPRESULT
         STOP RUN.
