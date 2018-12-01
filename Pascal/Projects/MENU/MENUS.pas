{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: 11/29/18

 PURPOSE: To make a menu and from that menu
          accomplish a specified task.

 STRUCTURE: - Intro (procedure).
            - Display Menu Options.
            - Get char from user (all one procedure).
            - Depending on what the user want's to see display it.
              - Can come back to menu at any time.
              - Can exit program at any time.
}

program programname;

{Libs}
uses crt;

 {Intro to program}
 procedure intro;
  begin
   writeln('Welocome to the AIRLINE CATALOGE':65);
   writeln;
   writeln('In this program, you can explore the different airlines.');
   writeln('Let''s begin!');
  end;
 {End intro}

 {Display menu}
  procedure menu(var tempMenuSelection: char);
   begin
    writeln;
    writeln('Please Pick A Region':10);
    writeln;
    writeln('[N]orth America.');
    writeln('[S]outh America.');
    writeln('[E]urope.');
    writeln('[A]sia.');
    writeln('A[F]rica.');
    write('Please make a selection: ');
    readln(tempMenuSelection);
    tempMenuSelection := upcase(tempMenuSelection);
   end;
 {End display menu}

 {Authenticate Selection}
  procedure authSelection(var tempSelect: char);
   begin
    // Check to see if user typed a valid response
    if (tempSelect = 'N') or (tempSelect = 'S') or (tempSelect = 'E') or (tempSelect = 'A') or (tempSelect = 'F') then
     begin // DON'T TOUCH
     end // DON'T TOUCH
     else // If User types invalid char then...
      repeat // ... Repeat loop until user types valid response.
       begin
        writeln('Invalid Option, Please Try Again.');
        write('Please make another selection: ');
        readln(tempSelect);
        tempSelect := upcase(tempSelect);
        end;
       until (tempSelect = 'N') or (tempSelect = 'S') or (tempSelect = 'E') or (tempSelect = 'A') or (tempSelect = 'F');
   end;
 {End Authenticate Selection}

 {Outro}
  procedure outro;
   begin
    writeln('Thank you for using this program');
   end;
 {End Outro}
{******************************************************************************}
var
 menuSelection: char;

begin {main}
 intro; // Intro squenence
 menu(menuSelection); // Display Menu
 authSelection(menuSelection);// Authticate

 // Outro
 outro;
 readkey;
end. {main}
