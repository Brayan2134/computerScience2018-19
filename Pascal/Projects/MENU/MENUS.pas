{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: 11/29/18

 PURPOSE: To make a menu and from that menu
          accomplish a specified task.

 STRUCTURE: - Intro (procedure)
            - Display Menu Options
            - Get char from user (all one procedure)
}

program programname;

{Libs}
uses crt;

 {Introduction}
 procedure intro;
 begin
  delay(600);
  writeln('The planes catalog, updated 2018.':75);
  writeln ;
  delay(600);
  writeln('THE BEST source to find about new planes.');
 end;
 {End Introduction}

 {Menu Options}
  procedure menu(var tempSelect: char);
   begin
    writeln('[A]irbus.');
    writeln('[B]oeing.');
    writeln('B[O]mbardier.');
    writeln('[C]essna.');
    writeln('[E]mbraer.');
    writeln ;
    writeln('[Q]uit program.');
    writeln ;
    write('Please select an option: ');
    readln(tempSelect);
    tempSelect := upcase(tempSelect); // Upcase Char

    // Checks if user pressed an available option
    // If not then the user goes into a repeat until they select a correct option.
    if (tempSelect = 'A') or (tempSelect = 'B') or (tempSelect = 'O') or (tempSelect = 'C') or (tempSelect = 'E') or (tempSelect = 'Q') then
     begin
     end
     else
      repeat // Repeat Until User Selects valid Option
       writeln('That''s an invalid option. Please pick something else.');
       writeln ;
       write('Please select an option: ');
       readln(tempSelect);
       tempSelect := upcase(tempSelect);
      until(tempSelect = 'A') or (tempSelect = 'B') or (tempSelect = 'O') or (tempSelect = 'C') or (tempSelect = 'E') or (tempSelect = 'Q');
   end;
 {End Menu Options}

 {Show All Airbus Models}
 procedure caseAirbus;
 var
  goBack: char;
  begin
   writeln;
   writeln('ALL AIRBUS MODELS':65);
   writeln ;
   textbackground(blue);
    writeln('A220 Family:':10);
   textbackground(black);
   writeln('A220-100':15);
   writeln('A220-300':15);
   writeln ;
   writeln('Press any button to go back to the menu');
   readkey;
   writeln ;
   writeln ;
   menu(goBack); // Go Back To Menu
  end;
 {End Show All Airbus Models}

 {Outro}
  procedure outro;
   begin
    writeln ;
    writeln('You have reached the end of the program');
    textbackground(blue);
    writeln('Press any key to exit.');
   end;
 {End Outro}
{******************************************************************************}
var {main}
 userSelect: char;

begin {main}
 textcolor(white); // Sets global text color
 intro; // Introduction
 menu(userSelect); // Available Options
 outro; // Outro
 readkey;
end. {main}
