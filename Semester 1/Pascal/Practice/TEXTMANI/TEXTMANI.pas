{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: 12/6/18

 PURPOSE: Write a program that will alter text.
}

program taxmani;

{Libs}
uses crt;

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
 {
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
 }

 // Alter specific letters.
 {
 for i := 1 to 80 do
 begin
  if (name[i] = 'S') or (name[i] = 's') then // Test for any s in input
  begin // Begin change s => $
   name[i] := '$';
  end; // End change s => $
 end;
 writeln(name);
 }

 // End of program.
 writeln;
 writeln('Press any key to end program.');
 readkey;
end. {main}
