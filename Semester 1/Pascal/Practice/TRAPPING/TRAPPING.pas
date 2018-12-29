{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: Sept 27, 2018

 PURPOSE: Learn how to trap errors.
}

program trapping;

{Libs}
uses crt;

     {******Procedure Area******}

     {Error checks to make sure user input is an integer}
        Procedure getInt(ask: string; var num : integer);
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

     {****** End Procedures******}

var
   dummy, age, rating : integer;

begin {main}
      getint('Enter a number: ', dummy);
      getint('Type in your age: ', age);
      getint('Rate this program (Scale 1-10); ', rating);
      writeln('Press any key to exit.');
      readkey;
end. {main}
