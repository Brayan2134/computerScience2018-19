{
 NAME: Brayan Quevedo Ramos
 CLASS: Computer Science 1
 DATE: 12/8/18

 PURPOSE: This is a program where
          the user can input, grab, and display any data that
          they have entered.

 STRUCTURE: - Intro
            - Menu
             - Show Data
             - Input Data
             - Quit
            - Outro

 REMARKS: -none-
}

program family;

uses
 crt;

 {Introduction}
 procedure intro;
 begin
  delay(200);
  writeln('THE FAMILY YOU NEVER HAD?!!?':65);
  writeln;
  delay(200);
  writeln('Welcome to the family program!');
  writeln;
  delay(200);
  writeln('In this progam, you can input or read any data in your family!');
  writeln;
  delay(200);
  writeln('While deletion of data is not available in this build,');
  writeln;
  delay(200);
  writeln('It will be coming soon!');
  writeln('********************************************************************');
 end;
 {End Introduction}

 {Menu}
 procedure menu;
 begin
  writeln;
  textbackground(green);
   writeln('Please select an option:');
  textbackgroud(black);
  writeln('[I]nput new family member.');
  writeln('[R]eview family history.');
  writeln('[Q]uit.');
 end;
 {End Menu}
{******************************************************************************}
begin
 textcolor(white); // Sets uniform color for entire program

 intro; // Introduction


 readkey;
end.
