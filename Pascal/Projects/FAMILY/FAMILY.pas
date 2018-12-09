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

uses crt;

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
 procedure menu (var tempUserAuth: char);
 begin;
  writeln;
  textbackground(green);
   writeln('Please select an option:');
  textbackground(black);
  writeln('[I]nput new family member.');
  writeln('[R]eview family history.');
  writeln('[Q]uit.');
  readln(tempUserAuth);
  tempUserAuth := upcase(tempUserAuth); // Limit potential errors

  // In Progress (DONT COMPILE)
  if (tempUserAuth = 'I') or (tempUserAuth = 'R') or (tempUserAuth = 'Q') then
  begin
  end
  else // If user types invalid response send into loop until they do
  begin
   repeat
    writeln;
    writeln('Sorry that was not a valid answer, please try again.');
    writeln('Please select an option:');
    tempUserAuth := upcase(tempUserAuth);
   until (tempUserAuth = 'I') or (tempUserAuth = 'R') or (tempUserAuth = 'Q');
  end; // End else
 end;
 {End Menu}

 {New Member}
 procedure newMember; // Entry Via Case
 begin
 end;
 {End New Member}

 {Review Members}
 procedure rMembers; // Entry Via Case
 begin
 end;
 {End Review Member}

 {Outro}
 procedure outro; // Entry Via Case
 begin;
 end;
 {End Outro}
{******************************************************************************}
var
 userChoice: char;

begin

 textcolor(white); // Sets uniform color for entire program
 intro; // Introduction
 menu(userChoice); // Menu & authentication

 if (userChoice = 'C') then
 begin
  case (userChoice) of
   'Q' : outro; // Entrypoint
  end;
 end
 else
  begin
   case (userChoice) of // Redirect to correct location
    'I' : newMember; // Entrypoint
    'R' : rMembers;  // Entrypoint
  end;
 end;

 readkey;
end.
