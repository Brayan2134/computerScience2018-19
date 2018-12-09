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
  writeln('THE FAMILY YOU NEVER HAD?!!?':65);
  writeln;
  writeln('Welcome to the family program!');
  writeln;
  writeln('In this progam, you can input or read any data in your family!');
  writeln;
  writeln('While deletion of data is not available in this build,');
  writeln;
  writeln('It will be coming soon!');
 end;
 {End Introduction}
{******************************************************************************}
begin
 intro; // Introduction
 readkey;
end.
