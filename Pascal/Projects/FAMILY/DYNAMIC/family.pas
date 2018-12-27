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
   // Authenticate
   if (tempMenu = 'S') or (tempMenu = 'A') or (tempMenu = 'Q') then
   // If user typed valid answer, skip reAuth code
   begin
   end
   // If not valid answer, go to reAuth
   else
   begin
    {reAuth}
    repeat
     writeln;
     textbackground(red);
      writeln('Sorry, that''s an invalid answer.');
     textbackground(black);
     write('Please make a selection: ');
     readln(tempMenu);
     tempMenu := upcase(tempMenu);
   until (tempMenu = 'S') or (tempMenu = 'A') or (tempMenu = 'Q');
   {End reAuth}
   end;
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
 family_member: array[1..3] of person; // Array to hold data
 menuSelection: char; // For Menu
 x : integer; // Variable For (Display Data) Section
 goToMenu : boolean;

begin

 {Required Sequence}
 textcolor(white); // Sets global text color
 intro; // Intro
 {End Required Sequence}


 goToMenu := true; // Let user go into repeat loop
 repeat // Check at bottom of code for until

 // Menu & auth
 menu(menuSelection);

 // menuSelection is: S, A, or Q

 // Goto Outro if user selected Q as Q is quit
 if (menuSelection = 'Q') then
 begin
  outro;
  gotoMenu := false;
 end;

 // Let user input data if user selected A

 // Show Array data if user selected S
 if (menuSelection = 'S') then
 begin

   // CHANGE LATER
  {Load Data Into Array}
  family_member[1].fname := 'Joe';
  family_member[1].lname := 'Smith';
  family_member[1].gender := 'M';

  family_member[2].fname := 'Will';
  family_member[2].lname := 'Smith';
  family_member[2].gender := 'M';

  family_member[3].fname := 'Lucy';
  family_member[3].lname := 'Letic';
  family_member[3].gender := 'F';
  {End Load Data Into Array}

  {Display Data}
  for x := 1 to 3 do // Displays all 3 family members
  begin
   writeln('Name: ', family_member[x].fname, ' ', family_member[x].lname);
   writeln('Gender: ', family_member[x].gender);
   writeln;
  end;
  {End Dsplay Data}

  // Ask user if they wish to go back to menu
  textbackground(blue);
   write('Do you wish to go back to the menu?(y/n): ');
   readln(menuSelection);
   menuSelection := upcase(menuSelection);
  textbackground(black);
  // Check to see if the user typed a valid responce the first time..
  if (menuSelection = 'Y') or (menuSelection = 'N') then
  // ..If they did, nothing happens and they can skip the reAuth code..
  begin
  end
  // .. If they DID NOT, then they HAVE TO goto reAuth code
  else
  begin
   repeat
   textbackground(red);
    writeln('Sorry! That was not a valid answer. Please try again.');
    write('Please make a selection(y/n): ');
    readln(menuSelection);
    menuSelection := upcase(menuSelection);
    writeln;
   textbackground(black);
   until (menuSelection = 'Y') or (menuSelection = 'N');
  end;

  // Depending on what the user chose, the var 'goToMenu' changes
  if (menuSelection = 'Y') then // User WANTS to go back to the menu
  begin
   goToMenu := true;
  end
  else // The else assumes that the var 'menuSelection' = 'N'
  begin
   goToMenu := false;
  end;

 end;
 until (goToMenu = false);

 readkey;
end.
