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
   writeln('Press the ENTER button to continue.');
   readln;
  textbackground(black);
 end;

 // The outro for the program
 procedure outro;
 begin
 writeln;
 delay(500);
 writeln('THANK YOU for using this program!');
 delay(500);
 textbackground(blue);
 writeln('PLEASE press any key to end the program.');
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
 writeln('DATA GATHERING.':65);

 // First individual data for array
 writeln;
 textbackground(green);
  delay(300);
  write('Please enter the name of the first individual: ');
  textbackground(blue);
  readln(name0);
 textbackground(black);

 // Second individual data for array
 writeln;
 textbackground(green);
  delay(300);
  write('Please enter the name of the second individual: ');
  textbackground(blue);
   readln(name1);
 textbackground(black);

 // Third individual data for array
 writeln;
 textbackground(green);
  delay(300);
  write('Please enter the name of the third individual: ');
  textbackground(blue);
  readln(name2);
 textbackground(black);

 // Fourth individual data for array
 writeln;
 textbackground(green);
  delay(300);
  write('Please enter the name of the fourth individual: ');
  textbackground(blue);
  readln(name3);
 textbackground(black);

 // Fifth individual data for array
 writeln;
 textbackground(green);
  delay(300);
  write('Please enter the name of the last individual: ');
  textbackground(blue);
  readln(name4);
 textbackground(black);

 // Sort gathered data from variables and store into array
 names_list[0] := name0;
 names_list[1] := name1;
 names_list[2] := name2;
 names_list[3] := name3;
 names_list[4] := name4;

 // Output the data from array
 clrscr;
 writeln('THE RESULTS OF THE PROGRAM.':65);
 writeln;
 textbackground(red);
 delay(500);
 writeln('The name of the first family member is: ',names_list[0]);
 writeln;
 delay(500);
 writeln('The name of the second family member is: ',names_list[1]);
 writeln;
 delay(500);
 writeln('The name of the third family member is: ',names_list[2]);
 writeln;
 delay(500);
 writeln('The name of the fourth family member is: ',names_list[3]);
 writeln;
 delay(500);
 writeln('The name of the last family member is: ',names_list[4]);
 textbackground(black);

 // Conclusion of program
 outro;

 readkey;
end.
