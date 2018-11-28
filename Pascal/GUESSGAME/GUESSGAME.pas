{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: Sept 27, 2018

 PURPOSE: To create a guessing game.
          Computer picks number.
          Player tries to guess.
          Computer lets user know if wrong/right.


          *****NOTES*****
 Algorithms:
            - Computer thinks of a number
            - Player guesses number
            - Decide if wrong/right

 Psudeo Code:
        computerPick(generatedNumber);
        playerGuess(guessedNumber);
        decide(generatedNumber, guessedNumber);
}

program guess;

{Libs}
uses crt;

     {******Procedure Area******}
     procedure computerPick(var selection : integer);
               begin
               selection := 94;
               writeln('The computer''s number is ', selection);
               end;

     procedure playerGuess(var attempt : integer);
               begin
               write('Guess a number!' );
               readln(attempt);
               end;

        procedure getint(ask: string; var num : integer);
        var
           numStr : string;
           code : integer;

           begin
                repeat
                write(ask);
                readln(numstr);
                val(numStr, num, code);
                if code <> 0 then
                   begin
                        writeln('Not an integer ');
                        writeln('Press any key to try again.');
                        readkey;
                        clrscr;
                   end;
                until (code = 0);
           end;

     {******End Procedures******}

     var {main}
        selection, attempt: integer;


     {********Main Code*******}
begin {main}

      computerPick(selection);
      playerGuess(attempt);
      getint(attempt);
      readkey;
end. {main}
