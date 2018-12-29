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
   readkey;
  end;

  // Menu & authentication
  procedure menu(var tempMenu: char);
  begin
   clrscr;
   writeln;
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
    write('Please make a selection and press <ENTER>: ');
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
 // Data Variables
 fname1, lname1, fname2, lname2, fname3, lname3: string;
 gender1, gender2, gender3: char;
 dataName: integer; // Modificication of data..
 dataDecide: string; // ..See above

begin

 {Required Sequence}
 textcolor(white); // Sets global text color
 intro; // Intro
 dataName := 0;

 // Initialize var (for array)
 fname1 := 'N/A'; // Start firstname var
 fname2 := 'N/A';
 fname3 := 'N/A';
 lname1 := 'N/A'; // Start lastname var
 lname2 := 'N/A';
 lname3 := 'N/A';
 gender1 := 'N'; // Start gender var
 gender2 := 'N';
 gender3 := 'N';
 {End Required Sequence}


 goToMenu := true; // Let user go into repeat loop
 repeat // Check at bottom of code for until

 // Menu & auth
 menu(menuSelection);

 // menuSelection is: S, A, or Q

 // Goto Outro if user selected Q as Q is quit
 if (menuSelection = 'Q') then
 begin
  gotoMenu := false;
 end;

 // Let user input data if user selected A
 if (menuSelection = 'A') then
 begin
  // If user first sees this, then dataName := 0

  {
   DataName exists as a procaution for the user to
   only input one family member at a time.
   As I don't know how to use Dynamic Arrays at the moment,
   the variable starts at 0 and everytime the user selects the option to
   enter data, the var dataName points to the correct person to modify/add.
  }
  {Data Sub-menu}
  clrscr;
  writeln;
  textbackground(green);
   writeln('What would you like to do:');
  textbackground(black);
  writeln('****************************');
  writeln;
  writeln('[M]odify data');
  writeln('[A]dd family members');
  writeln('[D]elete family members');
  writeln;
  textbackground(blue);
  write('Please select an option: ');
  textbackground(black);
  // Auth
  readln(dataDecide);
  dataDecide := upcase(dataDecide);
  if (dataDecide = 'M') or (dataDecide = 'A') or (dataDecide = 'D') then
  // Don't touch since user chose valid answer
  begin
  end
  {reAuth}
  else
  begin
   repeat
    writeln;
    textbackground(red);
     writeln('Sorry! That''s not a valid answer, please try again.');
    textbackground(black);
    writeln;
    textbackground(blue);
     writeln('Please make a selection: ');
    textbackground(black);
    readln(dataDecide);
    dataDecide := upcase(dataDecide);
   until (dataDecide = 'M') or (dataDecide = 'A') or (dataDecide = 'D');
  end;
  {End reAuth}
  {End data Sub-menu}
 end;

 // Show Array data if user selected S
 if (menuSelection = 'S') then
 begin

  {Load Data Into Array}
  family_member[1].fname := fname1;
  family_member[1].lname := lname1;
  family_member[1].gender := gender1;

  family_member[2].fname := fname2;
  family_member[2].lname := lname2;
  family_member[2].gender := gender2;

  family_member[3].fname := fname3;
  family_member[3].lname := lname3;
  family_member[3].gender := gender3;
  {End Load Data Into Array}

  {Display Data}
  for x := 1 to 3 do // Displays all 3 family members
  begin
   writeln;
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
 until (goToMenu = false); // The user keeps going to the menu until var is false

 outro; // Outro & end of program
 readkey;
end.
