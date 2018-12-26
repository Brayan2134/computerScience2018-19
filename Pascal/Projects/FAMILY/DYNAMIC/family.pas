{
 NAME: Brayan Quevedo Ramos
 CLASS: Computer Science 1
 DATE: 12/26/18

 PURPOSE: This program is in addition to the last one I did,
          where it still has the same basic concept;
          the user can add as many family members as he or she wants into an array,
          and from that read the family members.
}

program Family;

uses
 crt;

 // What data is going to go into array
 type
  person = record
   fname, lname: string;
   gender: char;
  end;

  // Intro
  procedure intro;
  begin
   writeln('THE FAMILY TREE':65);
   writeln;
   delay(400);
   writeln('This is a program where you can add and review family data!');
   writeln;
   delay(400);
   writeln('The data may not be motiifed at this moment,');
   writeln;
   delay(400);
   writeln('And you do have to add all of the family data at once,');
   writeln;
   delay(400);
   writeln('But other than that, ');
   writeln;
   delay(400);
   writeln('Let''s get started!');
   writeln;
   textbackground(blue);
    delay(400);
    writeln('Press any button to continue');
   textbackground(black);
  end;

  // Menu & authentication
  procedure menu(var tempMenu: char);
  begin
   clrscr;
   textbackground(green);
    delay(300);
    writeln('MENU:');
   textbackground(black);
   writeln('[S]ee family members');
   writeln('[A]dd family memebrs');
   writeln;
   writeln('[Q]uit');
   writeln;
   textbackground(blue);
    write('Please make a selection: ');
   textbackground(black);
   readln(tempMenu);
   tempMenu := upcase(tempMenu); // Limit errors
   repeat
    writeln;
    textbackground(red);
     writeln('Sorry, that''s an invalid answer.');
    textbackground(black);
    write('Please make a selection: ');
    readln(tempMenu);
    tempMenu := upcase(tempMenu);
   until (tempMenu = 'S') or (tempMenu = 'A') or (tempMenu = 'Q');
  end;

  // Outro
  procedure outro;
  begin
   writeln;
   writeln('Thank you for using this program!');
   writeln;
   textbackground(red);
    writeln('Please press any button to exit.');
   textbackground(black);
   writeln;
  end;
{******************************************************************************}
var
 employee: array[1..3] of person; // Array to hold data
 menuSelection: char; // For Menu
 x : integer; // Variable For (Display Data) Section

begin

 textcolor(white); // Sets global text color

 intro; // Intro

 // Menu & auth
 menu(menuSelection);

 // CHANGE LATER
 {Load Data Into Array}
 employee[1].fname := 'Joe';
 employee[1].lname := 'Smith';
 employee[1].gender := 'M';

 employee[2].fname := 'Will';
 employee[2].lname := 'Smith';
 employee[2].gender := 'M';

 employee[3].fname := 'Lucy';
 employee[3].lname := 'Letic';
 employee[3].gender := 'F';
 {End Load Data Into Array}

 {Display Data}
 for x := 1 to 3 do // Displays all 3 family members
 begin
  writeln('Name: ', employee[x].fname, ' ', employee[x].lname);
  writeln('Gender: ', employee[x].gender);
  writeln;
 end;
 {End Dsplay Data}

 outro; // Outro
 readkey;
end.
