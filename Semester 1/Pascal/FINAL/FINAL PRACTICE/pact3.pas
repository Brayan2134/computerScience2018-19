{
 INPUT: Any string upto 80 chars
 Output: all 'A' letters removed
}

program programname;

uses
 crt;

var
 input: string;
 i: integer;

begin

 // Get input
 write('Input a string!');
 readln(input);

 // Upcase input
 input := upcase(input);

 // Delete letter 'A'
 for i := 1 to 80 do
 begin
  if (input[i] = 'A') then
  begin
   input[i] := ' ';
  end;
 end;

 // Output
 writeln(input);
 readkey;
end.
