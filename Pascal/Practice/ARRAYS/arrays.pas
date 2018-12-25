{
 NAME: Brayan Quevedo Ramos
 CLASS: Computer Science 1
 DATE: 12/22/18

 PURPOSE: This is the playground where I can learn how to use Pascal Arrays
}

program playgroundarrays;

uses
 crt;

var
 {Array Example 1 (var)}
 numbers: array[0..10] of integer; // Declare Array
 i,j: integer; // Other variables that CAN be used for the array or anything
 {End Array Example 1 (var)}

 {Array Example 2}
 input: array[0..2] of char;
 input0, input1, input2: char;
 {End Array Example 2}

begin

 writeln('Array Example 1':65);

 {Array Example 1}
 for i := 0 to 10 do
  begin
   numbers[i] := i + 50; {Sets i to start off at 50}
  end;
 for j := 0 to 10 do
  begin
   writeln('Element[',j,']= ', numbers[j]);
  end;
 {End Array Example 1}

 writeln;
 writeln;
 writeln;
 writeln('Array Example 2':65);

 {Array Example 2}
 write('Enter a name: '); // User inputs a name
 readln(input0);
 writeln;

 write('Enter a second name: '); // User inputs a name
 readln(input1);
 writeln;

 write('Enter a third name: '); // User inputs a name
 readln(input2);
 writeln;

 // Every spot in the array gets assigned a value
 input[0] := input0;
 input[1] := input1;
 input[2] := input2;

 writeln(input);
 {End Array Example 2}

 readkey;
end.
