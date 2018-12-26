{
 NAME: Brayan Quevedo Ramos
 CLASS: Computer Science 1
 DATE: 12/25/18

 PURPOSE: To create a program that will collect data about a family
          and store that in an array.
          The data can be minipulated via A-Z.
}

program family;

uses
 crt;

 // Introduction into program
 procedure intro;
 begin
  textbackground(white);
  textcolor(black);
   writeln('WHAT''S IN YOUR FAMILY?!?!');
  textcolor(white);
  textbackground(black);
 end;

{******************************************************************************}
var
 // Initialize array
 names_list: array[0..1] of string;
 // Variables to store names of family members
 name1: string;

begin
 // Gather data for array
 intro; // Introduction into program

 // Sort gathered data from variables and store into array
 names_list[0] := name1;
 names_list[1] := 'N';

 // Output the data from array
 writeln(names_list[0]);

 // Conclusion of program

 readkey;
end.
