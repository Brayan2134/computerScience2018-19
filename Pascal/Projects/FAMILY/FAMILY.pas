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
  delay(300);
  writeln('WHAT''S IN YOUR FAMILY?!?!':65);
  writeln;
  delay(300);
  writeln('In this program, you can input user data and display it!');
  writeln;
  delay(300);
  writeln('As of right now, only 5 family members are supported.');
  writeln;
  textbackground(blue);
   delay(300);
   writeln('Press any button to continue.');
  textbackground(black);
 end;

{******************************************************************************}
var

 // Initialize array
 names_list: array[0..4] of string;

 // Variables to store names of family members
 name0: string;
 name1: string;
 name2: string;
 name3: string;
 name4: string;

begin

 // Gather data for array
 intro; // Introduction into program
 clrscr; // Clear the screen after user has seen the intro

 // First individual data for array
 textbackground(green);
  writeln('Please enter the name of the first individual:');
 textbackground(black);

 // Second individual data for array

 // Third individual data for array

 // Fourth individual data for array

 // Fifth individual data for array

 // Sort gathered data from variables and store into array
 names_list[0] := name0;
 names_list[1] := name1;
 names_list[2] := name2;
 names_list[3] := name3;
 names_list[4] := name4;

 // Output the data from array
 writeln('The name of the first family member is: ',names_list[0]);
 writeln;
 writeln('The name of the second family member is: ',names_list[1]);
 writeln;
 writeln('The name of the third family member is: ',names_list[2]);
 writeln;
 writeln('The name of the fourth family member is: ',names_list[3]);
 writeln;
 writeln('The name of the last family member is: ',names_list[4]);

 // Conclusion of program

 readkey;
end.
