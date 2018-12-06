{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: 12/6/18

 PURPOSE: Write a program that will alter text.
}

program taxmani;

{Libs}
uses crt;

 {getInt - Make sure user types an Integer}
 Procedure getInt(ask:string; var num:integer);
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
 {End getInt - Make sure user types an Integer}

{******************************************************************************}
var {main}
 name: string;
 i: integer;
 vowels: integer;

begin {main}

 // Ask user for string.
 writeln('Please input a string upto 80 Chars.');
 readln(name);

 // Output the string one letter at a time.
 {
 for i := 1 to 80 do
 begin
  write(name[i]);
  delay(90);
  textcolor(random(16));
 end;
 }

 // Upcase entire string.
 {
 for i := 1 to 80 do
 begin
  name[i] := upcase(name[i]);
 end;
 writeln(name);
 }

 // Count vowels in a phrase.
 vowels := 0;
 name := upcase(name);

 for i := 1 to 80 do
 begin
  if (name[i] in ['A', 'E', 'I', 'O', 'U']) then // Check each letter/number against vowels
  begin // Vowels
   vowels := vowels + 1;
  end; // End Vowels
 end;
 writeln(name, ' contains ', vowels, ' vowels.');


 // End of program.
 writeln;
 writeln('Press any key to end program.');
 readkey;
end. {main}
