{
 NAME: Brayan Quevedo Ramos
 CLASS: Computer Science 1
 DATE: 12/26/18

 PURPOSE: This program is in addition to the last one I did,
          where it still has the same basic concept;
          the user can add as many family members as he or she wants into an array,
          and from that read the family members.

 AUTHOR NOTES: Would use dynamic Array, if knew how to
               use it.

               GitHub Notes:
               *****************************************************************
               FOR DETAILED CHANGES TO THIS PROGRAM CHECK GITHUB REPO
               LINK: https://github.com/Brayan2134/computerScience2018-19
               FOLDER: Semester1/Pascal/PROJECTS/FAMILY/DYNAMIC/TURNIN/
               BRANCH: family(Project)-DynamicArray
               NOTE: The finished project may be pushed into the
                     master branch at the time of turning in.

             IMPORTANT NOTES:
             *******************************************************************
             MR.RODIN HAS CLEARED ME TO DO FAMILY MEMBERS INSTEAD OF NUMBERS
             WHEN I WENT TO MEXICO SO MODIFICATIONS HAVE BEEN MADE.
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
   writeln('This is a family progam,');
   writeln;
   delay(400);
   writeln('Where you insert upto 3 family members,');
   writeln;
   writeln('and you can modify/delete, or do any minipulation,');
   writeln;
   delay(400);
   writeln('with the family members.');
   writeln;
   textbackground(blue);
    writeln('Now please press any button to begin.');
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
 // Array to hold data
 family_member: array[1..3] of person;

 // Menu
 menuSelection: char;
 goToMenu : boolean;

 // Data Variables
 fname1, lname1, fname2, lname2, fname3, lname3: string;
 gender1, gender2, gender3: char;
 dataDecide: string; // Select what user wants to do with data
 modifyFamilyMember: integer; // Select what family member to choose
 subModifyFamilyMember: char; // Select what part of family member they want to change
 confirmDeleteFamilyMember: char; // User authenticates if they want to delete a family members data
 deleteFamilyMember: integer; // Selects which family member to delete
 addFamilyMember: integer; // Decides how many family members the user can add
 userSelectAddFamilyMember: integer; // Decides how many family members the user WANTS to add
 familyData1, familyData2, familyData3: boolean; // Which family members have been added

 //Display Data
 x : integer; // Variable to loop sequence to display data
 confirmSeeData: char; // Ask user if they want to see data a different way
 userChooseDisplayData: char;

begin

 {Required Sequence}
 textcolor(white); // Sets global text color
 intro; // Intro

 // Initialize var (for array)
 fname1 := ''; // Start firstname var
 fname2 := '';
 fname3 := '';
 lname1 := ''; // Start lastname var
 lname2 := '';
 lname3 := '';
 gender1 := 'N'; // Start gender var
 gender2 := 'N';
 gender3 := 'N';

 // How many family members the user can add
 addFamilyMember := 3;

 // Booleans to check which family members have been added
 familyData1 := false;
 familyData2 := false;
 familyData3 := false;

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

{******************************************************************************}

 // Let user input data if user selected A
 if (menuSelection = 'A') then
 begin

  {*****************************************************************************
   DataName exists as a procaution for the user to
   only input one family member at a time.
   As I don't know how to use Dynamic Arrays at the moment,
   the variable starts at 0 and everytime the user selects the option to
   enter data, the var dataName points to the correct person to modify/add.
  *****************************************************************************}
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
   writeln;
  end;
  {End reAuth}
  {End data Sub-menu}

  {*****************************************************************************
  Modify, Add Delete are only options that the user can
  have at the moment.
  From here, depending on what they chose, they get redirected to what they
  want to do.

  MODIFY DATA METHOD
  - User gets to choose what person they want to modify (1..3)
  - The user chooses what part of the person they want to modify
   (e.g firstname or lastname)
  - Once user modified data, they get asked if they want to modify another
  person.
  - If not, they return to menu.

  ADD DATA METHOD
  - Check to see if user can add more people (since limit is 3)
   - User gets to input data if they can
    - REPLACE FILLER DATA WITH THE DATA THEY INSERTED
   - They get error message if they can't
  - Return to menu.

  DELETE DATA METHOD
  - User chooses which data to delete.
  - User gets confirmation.
   - If user chooses no, return to menu
   - If user selects yes, replace data with 'N/A'
    - User goes to menu

  General notes
   - DON'T WORK WITH CASE IF YOU DON'T KNOW HOW TO MIN DATA IN PROCEDURES!!!
   - goToMenu is your friend to go backto menu.
  *****************************************************************************}

  {Modify data method}
  if (dataDecide = 'M') then
  begin {Main}
   writeln;
   writeln;
   {Menu to select person}
   textbackground(green);
    writeln('What would you like to modify?');
   textbackground(black);
   writeln;
   writeln('Family member [1]');
   writeln('Family member [2]');
   writeln('Family member [3]');
   writeln;
   textbackground(blue);
    write('Please select an option: ');
   textbackground(black);
   readln(modifyFamilyMember);
   {Authenticate}
   if (modifyFamilyMember = 1) or (modifyFamilyMember = 2) or (modifyFamilyMember = 3) then
   begin // User chose valid answer
   end
   {ReAuth}
   else
   repeat
    begin
     writeln;
     textbackground(red);
      writeln('Sorry! That''s not a valid answer.');
     textbackground(white);
     writeln;
     textbackground(blue);
      write('Please select an option: ');
     textbackground(black);
     readln(modifyFamilyMember);
    end;
    until (modifyFamilyMember = 1) or (modifyFamilyMember = 2) or (modifyFamilyMember = 3);
    writeln;
   {End ReAuth}
   {End Authenticate}
   {End Menu to select person}

   {Modify Person 1************************************************************}
   if (modifyFamilyMember = 1) then
   begin
    {Menu for what section of modification}
    writeln;
    textbackground(green);
     writeln('What section of Family Member 1, would you like to modify?');
    textbackground(black);
    writeln;
    writeln('[F]irst name');
    writeln('[L]ast name');
    writeln('[G]ender');
    writeln;
    textbackground(blue);
     write('Please select an option: ');
    textbackground(black);
    readln(subModifyFamilyMember);
    subModifyFamilyMember := upcase(subModifyFamilyMember);

    // Only options are F/L/G

    {Authenticate}
    if (subModifyFamilyMember = 'F') or (subModifyFamilyMember = 'L') or (subModifyFamilyMember = 'G') then
    begin // If user chose valid answer, move onto next block of code
    end
    else
    {ReAuth}
    begin
     repeat
      writeln;
      textbackground(red);
       writeln('Sorry! That''s not a valid option.');
      textbackground(black);
      writeln;
      textbackground(blue);
       writeln('Please select another option: ');
      textbackground(black);
      readln(subModifyFamilyMember);
      subModifyFamilyMember := upcase(subModifyFamilyMember);
     until (subModifyFamilyMember = 'F') or (subModifyFamilyMember = 'L') or (subModifyFamilyMember = 'G');
     writeln;
    end;
    {End reAuth}
    {End Authenticate}
   end;

   {Change Person 1 First name}
   if (subModifyFamilyMember = 'F') and (modifyFamilyMember = 1) then
   begin
    writeln;
    textbackground(green);
     writeln('Change Family Member 1''s First Name');
    textbackground(black);
    writeln;
    textbackground(blue);
     write('Please write Family Member 1''s First Name: ');
    textbackground(black);
    readln(fname1);
    writeln;
    textbackground(yellow);
    textcolor(black);
     writeln(fname1,' has been successfully changed!');
    textcolor(white);
    writeln;
    textbackground(blue);
     writeln('Press any button to go back to main menu.');
    textbackground(black);
    readkey;
   end;
   {End Change Person 1 First Name}

   {Change Person 1 Last Name}
   if (subModifyFamilyMember = 'L') and (modifyFamilyMember = 1) then
   begin
   writeln;
    textbackground(green);
     writeln('Change Family Member 1''s Last Name');
    textbackground(black);
    writeln;
    textbackground(blue);
     write('Please write Family Member 1''s Last Name: ');
    textbackground(black);
    readln(lname1);
    writeln;
    textbackground(yellow);
    textcolor(black);
     writeln(fname1,' has been successfully changed!');
    textcolor(white);
    writeln;
    textbackground(blue);
     writeln('Press any button to go back to main menu.');
    textbackground(black);
    readkey;
   end;
   {End Change Person 1 Last Name}

   {Change Person 1 Gender}
   if (subModifyFamilyMember = 'G') and (modifyFamilyMember = 1)then
   begin
    writeln;
    textbackground(green);
     writeln('Change Family Member 1''s Gender');
    textbackground(black);
    writeln;
    textbackground(blue);
     write('Please write Family Member 1''s Gender: ');
    textbackground(black);
    readln(gender1);
    writeln;
    textbackground(yellow);
    textcolor(black);
     writeln(fname1,' has been successfully changed!');
    textcolor(white);
    writeln;
    textbackground(blue);
     writeln('Press any button to go back to main menu.');
    textbackground(black);
     readkey;
    end;
   {End Change Person 1 Gender}
   {End Modify Person 1********************************************************}

   {Modify Person 2************************************************************}
   if (modifyFamilyMember = 2) then
   begin
   {Menu for what section of modification}
    writeln;
    textbackground(green);
     writeln('What section of Family Member 2, would you like to modify?');
    textbackground(black);
    writeln;
    writeln('[F]irst name');
    writeln('[L]ast name');
    writeln('[G]ender');
    writeln;
    textbackground(blue);
     write('Please select an option: ');
    textbackground(black);
    readln(subModifyFamilyMember);
    subModifyFamilyMember := upcase(subModifyFamilyMember);

    {Authenticate}
    if (subModifyFamilyMember = 'F') or (subModifyFamilyMember = 'L') or (subModifyFamilyMember = 'G') then
    begin // If user chose valid answer, move onto next block of code
    end
    else
    {ReAuth}
    begin
     repeat
      writeln;
      textbackground(red);
       writeln('Sorry! That''s not a valid option.');
      textbackground(black);
      writeln;
      textbackground(blue);
       writeln('Please select another option: ');
      textbackground(black);
      readln(subModifyFamilyMember);
      subModifyFamilyMember := upcase(subModifyFamilyMember);
     until (subModifyFamilyMember = 'F') or (subModifyFamilyMember = 'L') or (subModifyFamilyMember = 'G');
     writeln;
    end;
    {End reAuth}
    {End Authenticate}

    {Change Person 2 First name}
   if (subModifyFamilyMember = 'F') and (modifyFamilyMember = 2) then
   begin
    writeln;
    textbackground(green);
     writeln('Change Family Member 2''s First Name');
    textbackground(black);
    writeln;
    textbackground(blue);
     write('Please write Family Member 2''s First Name: ');
    textbackground(black);
    readln(fname2);
    writeln;
    textbackground(yellow);
    textcolor(black);
     writeln(fname2,' has been successfully changed!');
    textcolor(white);
    writeln;
    textbackground(blue);
     writeln('Press any button to go back to main menu.');
    textbackground(black);
    readkey;
   end;
   {End Change Person 2 First Name}

   {Change Person 2 Last Name}
   if (subModifyFamilyMember = 'L') and (modifyFamilyMember = 2) then
   begin
   writeln;
    textbackground(green);
     writeln('Change Family Member 2''s Last Name');
    textbackground(black);
    writeln;
    textbackground(blue);
     write('Please write Family Member 2''s Last Name: ');
    textbackground(black);
    readln(lname2);
    writeln;
    textbackground(yellow);
    textcolor(black);
     writeln(fname2,' has been successfully changed!');
    textcolor(white);
    writeln;
    textbackground(blue);
     writeln('Press any button to go back to main menu.');
    textbackground(black);
    readkey;
   end;
   {End Change Person 2 Last Name}

   {Change Person 2 Gender}
   if (subModifyFamilyMember = 'G') and (modifyFamilyMember = 2) then
   begin
    writeln;
    textbackground(green);
     writeln('Change Family Member 2''s Gender');
    textbackground(black);
    writeln;
    textbackground(blue);
     write('Please write Family Member 2''s Gender: ');
    textbackground(black);
    readln(gender2);
    writeln;
    textbackground(yellow);
    textcolor(black);
     writeln(fname2,' has been successfully changed!');
    textcolor(white);
    writeln;
    textbackground(blue);
     writeln('Press any button to go back to main menu.');
    textbackground(black);
     readkey;
    end;
   {End Change Person 2 Gender}
   end;
   {End Modify Person 2********************************************************}

   {Modify Person 3************************************************************}
   if (modifyFamilyMember = 3) then
   begin
    {Menu for what section of modification}
    writeln;
    textbackground(green);
     writeln('What section of Family Member 1, would you like to modify?');
    textbackground(black);
    writeln;
    writeln('[F]irst name');
    writeln('[L]ast name');
    writeln('[G]ender');
    writeln;
    textbackground(blue);
     write('Please select an option: ');
    textbackground(black);
    readln(subModifyFamilyMember);
    subModifyFamilyMember := upcase(subModifyFamilyMember);

    // Only options are F/L/G

    {Authenticate}
    if (subModifyFamilyMember = 'F') or (subModifyFamilyMember = 'L') or (subModifyFamilyMember = 'G') then
    begin // If user chose valid answer, move onto next block of code
    end
    else
    {ReAuth}
    begin
     repeat
      writeln;
      textbackground(red);
       writeln('Sorry! That''s not a valid option.');
      textbackground(black);
      writeln;
      textbackground(blue);
       writeln('Please select another option: ');
      textbackground(black);
      readln(subModifyFamilyMember);
      subModifyFamilyMember := upcase(subModifyFamilyMember);
     until (subModifyFamilyMember = 'F') or (subModifyFamilyMember = 'L') or (subModifyFamilyMember = 'G');
     writeln;
    end;
    {End reAuth}
    {End Authenticate}
   end;

   {Change Person 3 First name}
   if (subModifyFamilyMember = 'F') and (modifyFamilyMember = 3) then
   begin
    writeln;
    textbackground(green);
     writeln('Change Family Member 3''s First Name');
    textbackground(black);
    writeln;
    textbackground(blue);
     write('Please write Family Member 3''s First Name: ');
    textbackground(black);
    readln(fname3);
    writeln;
    textbackground(yellow);
    textcolor(black);
     writeln(fname3,' has been successfully changed!');
    textcolor(white);
    writeln;
    textbackground(blue);
     writeln('Press any button to go back to main menu.');
    textbackground(black);
    readkey;
   end;
   {End Change Person 3 First Name}

   {Change Person 3 Last Name}
   if (subModifyFamilyMember = 'L') and (modifyFamilyMember = 3) then
   begin
   writeln;
    textbackground(green);
     writeln('Change Family Member 3''s Last Name');
    textbackground(black);
    writeln;
    textbackground(blue);
     write('Please write Family Member 3''s Last Name: ');
    textbackground(black);
    readln(lname3);
    writeln;
    textbackground(yellow);
    textcolor(black);
     writeln(fname3,' has been successfully changed!');
    textcolor(white);
    writeln;
    textbackground(blue);
     writeln('Press any button to go back to main menu.');
    textbackground(black);
    readkey;
   end;
   {End Change Person 3 Last Name}

   {Change Person 3 Gender}
   if (subModifyFamilyMember = 'G') and (modifyFamilyMember = 3) then
   begin
    writeln;
    textbackground(green);
     writeln('Change Family Member 3''s Gender');
    textbackground(black);
    writeln;
    textbackground(blue);
     write('Please write Family Member 3''s Gender: ');
    textbackground(black);
    readln(gender1);
    writeln;
    textbackground(yellow);
    textcolor(black);
     writeln(fname1,' has been successfully changed!');
    textcolor(white);
    writeln;
    textbackground(blue);
     writeln('Press any button to go back to main menu.');
    textbackground(black);
     readkey;
    end;
   {End Change Person 3 Gender}
   {End Modify Person 3********************************************************}
  end; {End Main}
  {End modify data method}

  {Add data method}
  if (dataDecide = 'A') then
  begin

  // addFamilyMember := 0 if user sees for first time

  {*****************************************************************************
  ADD FAMILY MEMBERS INTO ARRAY...SORT OF...

  This section of the program is meant to do what modify data does, but on a
  faster scale. With the modify data section, the user has to choose which
  family member they want to modify, and then choose which contents of the
  family member they want to modify, like names or the gender.

  WITH ADD FAMILY MEMBERS it's a lot faster.
  The user just chooses how many they want to add into the
  array, aka modifying the current array,
  and then just imputting the required information.

  STRUCTURE OF THIS SECTION:
  - There's a counter of how many family members have been added
   - If counter reaches 3 then user gets a message saying that the max.
     amount of family members has been reached and that they either
     need to modify or delete family members.
   - (SUB-NOTE): They get displayed how many family members they
                 can add.
   - (SUB-NOTE): Use booleans to see which family members they
                 can add. For example. If they added 3, make sure
                 the boolean for all 3 is true.
                 If the user then chooses to delete family member 2, aka
                 reset data, GO INTO SECTION WHERE THE DATA GETS REFORMATTED
                 AND MAKE THE BOOLEAN FALSE.
  - The user gets to choose how many they want to add (1-3)
  - The user gets prompted with the information on each individual
  *****************************************************************************}

  // Limit errors
  {
  If user deleted one of the dummy family members, the addFamilyMember value,
  the var goes to 4 and we can't have that.
  }
  if (addFamilyMember >= 4) then
  begin
   addFamilyMember := 3;
  end;

  // How many family members the user wants to add
  userSelectAddFamilyMember := 0;

  writeln;
  textbackground(green);
   writeln('How many family members do you wish to add?');
  textbackground(blue);
   writeln('You can add, ', addFamilyMember, ' family member''s left.');
  textbackground(black);
  writeln;
  textbackground(blue);
   write('Please make a selection between (1 and 3): ');
  textbackground(black);
  readln(userSelectAddFamilyMember);
  {Auth}
  if (userSelectAddFamilyMember = 1) or (userSelectAddFamilyMember = 2) or (userSelectAddFamilyMember = 3) then
  begin
  end
  else
  {reAuth}
  begin
   repeat
    writeln;
    textbackground(red);
     writeln('Sorry! You chose an invalid answer. Please try again.');
    textbackground(black);
    writeln;
    textbackground(blue);
     write('Please make a selection between (1 and 3): ');
    textbackground(black);
    readln(userSelectAddFamilyMember);
   until (userSelectAddFamilyMember = 1) or (userSelectAddFamilyMember = 2) or (userSelectAddFamilyMember = 3);
  end;
  {End reAuth}
  {End auth}

  // MAKE SURE TO USE BOOLEANS DEPENDING ON HOW MANY FAMILY MEMBERS THE USER WANTS TO ADD!!!

  {*****************************************************************************
  STRUCTURE OF THIS SECTION:
  - Check how many family members the user wants to add
  - Check to see which familyData booleans are false
   - If none are false, tell user they can't add anymore
     family members, and that they'll need to delete one to add one.
  *****************************************************************************}

  {If the user wants to add 1 family member}
  if (userSelectAddFamilyMember = 1) and (familyData1 = false) then
  begin

   // Family member 1 now has data
   familyData1 := true;
   addFamilyMember := addFamilyMember - 1;
   userSelectAddFamilyMember := 0;

   textbackground(green);
    writeln('Input of information:');
   textbackground(black);
   writeln;
   {Save user input to vars for array}
   write('Please enter the family member''s first name: ');
   readln(fname1);
   writeln;
   write('Please enter the family member''s last name: ');
   readln(lname1);
   writeln;
   textbackground(yellow);
    writeln('PLEASE ONLY ENTER THE FIRST LETTER OF THEIR GENDER');
   textbackground(black);
   writeln;
   write('Please enter the family member''s gender: ');
   readln(gender1);
   {End save user input to vars for array}
  end

  else if (userSelectAddFamilyMember = 1) and (familyData2 = false) then
  begin

   // Family member 2 now has data
   familyData2 := false;
   addFamilyMember := addFamilyMember - 1;
   userSelectAddFamilyMember := 0;

   textbackground(green);
    writeln('Input of information:');
   textbackground(black);
   writeln;
   {Save user input to vars for array}
   write('Please enter the family member''s first name: ');
   readln(fname2);
   writeln;
   write('Please enter the family member''s last name: ');
   readln(lname2);
   writeln;
   textbackground(yellow);
    writeln('PLEASE ONLY ENTER THE FIRST LETTER OF THEIR GENDER');
   textbackground(black);
   writeln;
   write('Please enter the family member''s gender: ');
   readln(gender2);
   {End save user input to vars for array}
  end

  else if (userSelectAddFamilyMember = 1) and (familyData3 = false) then
  begin

   // Family member 3 now has data
   familyData3 := true;
   addFamilyMember := addFamilyMember - 1;
   userSelectAddFamilyMember := 0;

   textbackground(green);
    writeln('Input of information:');
   textbackground(black);
   writeln;
   {Save user input to vars for array}
   write('Please enter the family member''s first name: ');
   readln(fname3);
   writeln;
   write('Please enter the family member''s last name: ');
   readln(lname3);
   writeln;
   textbackground(yellow);
    writeln('PLEASE ONLY ENTER THE FIRST LETTER OF THEIR GENDER');
   textbackground(black);
   writeln;
   write('Please enter the family member''s gender: ');
   readln(gender3);
   {End save user input to vars for array}
  end
  {End if user wants to add 1 family member}

  {****************************************************************************}

  {If user wants to add 2 family members}
  else if (userSelectAddFamilyMember = 2) and (familyData1 = false) and (familyData2 = false) then
  begin

   // Assume variables now have data
   familyData1 := true;
   familyData2 := true;
   addFamilyMember := addFamilyMember - 2;
   userSelectAddFamilyMember := 0;

   // Intro
   textbackground(green);
    writeln('Input of information:');
   textbackground(black);
   writeln;

   {Save user input into var for array}

   // Family Member 1
   textbackground(blue);
    writeln('Family Member 1:');
   textbackground(black);
   writeln;
   write('Please enter the first family member''s first name: ');
   readln(fname1);
   write('Please enter the first family member''s last name: ');
   readln(lname1);
   write('Please enter the first family member''s gender (1 letter please): ');
   readln(gender1);
   gender1 := upcase(gender1);
   writeln;

   // Family Member 2
   textbackground(blue);
    writeln('Family Member 2:');
   textbackground(black);
   writeln;
   write('Please enter the second family member''s first name: ');
   readln(fname2);
   write('Please enter the second family memeber''s last name: ');
   readln(lname2);
   write('Please enter the second family member''s gender (1 letter please): ');
   readln(gender2);
   gender2 := upcase(gender2);
   {End save user input into var for array}
  end

  else if (userSelectAddFamilyMember = 2) and (familyData1 = false) and (familyData3 = false) then
  begin

  // Assume variables now have data
  familyData1 := true;
  familyData3 := true;
  addFamilyMember := addFamilyMember - 2;
  userSelectAddFamilyMember := 0;

  // Intro
  textbackground(green);
   writeln('Input of information:');
  textbackground(black);
  writeln;

  {Save user input into var for array}

  // Family member 1
  textbackground(blue);
    writeln('Family Member 1:');
   textbackground(black);
   writeln;
   write('Please enter the first family member''s first name: ');
   readln(fname1);
   write('Please enter the first family member''s last name: ');
   readln(lname1);
   write('Please enter the first family member''s gender (1 letter please): ');
   readln(gender1);
   gender1 := upcase(gender1);
   writeln;

  // Family member 3
  textbackground(blue);
    writeln('Family Member 3:');
   textbackground(black);
   writeln;
   write('Please enter the second family member''s first name: ');
   readln(fname3);
   write('Please enter the second family memeber''s last name: ');
   readln(lname3);
   write('Please enter the second family member''s gender (1 letter please): ');
   readln(gender3);
   gender3 := upcase(gender3);
  {End save user input into var for array}
  end

  else if (userSelectAddFamilyMember = 2) and (familyData2 = false) and (familyData3 = false) then
  begin

  // Assume variables now have data
  familyData2 := true;
  familyData3 := true;
  addFamilyMember := addFamilyMember - 2;
  userSelectAddFamilyMember := 0;

  // Intro
  textbackground(green);
   writeln('Input of information:');
  textbackground(black);
  writeln;

  {Save user input into var for array}

  // Family member 2
    textbackground(blue);
    writeln('Family Member 2:');
   textbackground(black);
   writeln;
   write('Please enter the first family member''s first name: ');
   readln(fname2);
   write('Please enter the first family memeber''s last name: ');
   readln(lname2);
   write('Please enter the first family member''s gender (1 letter please): ');
   readln(gender2);
   gender2 := upcase(gender2);
   writeln;

  //Family member 3
  textbackground(blue);
    writeln('Family Member 3:');
   textbackground(black);
   writeln;
   write('Please enter the second family member''s first name: ');
   readln(fname3);
   write('Please enter the second family memeber''s last name: ');
   readln(lname3);
   write('Please enter the second family member''s gender (1 letter please): ');
   readln(gender3);
   gender3 := upcase(gender3)

  {End save user input into var for array}
  end
  {End if user wants to add 2 family members}

  {****************************************************************************}

  {If user wants to add 3 family members}
  else if (userSelectAddFamilyMember = 3) and (familyData1 = false) and (familyData2 = false) and (familyData3 = false) then
  begin

   // Assume that family members now have data
   familyData1 := true;
   familyData2 := true;
   familyData3 := true;
   addFamilyMember := addFamilyMember - 3;
   userSelectAddFamilyMember := 0;

   // Family Member 1
   textbackground(blue);
    writeln('Family Member 1:');
   textbackground(black);
   writeln;
   write('Please enter the first family member''s first name: ');
   readln(fname1);
   write('Please enter the first family member''s last name: ');
   readln(lname1);
   write('Please enter the first family member''s gender (1 letter please): ');
   readln(gender1);
   gender1 := upcase(gender1);
   writeln;

   // Family Member 2
   textbackground(blue);
    writeln('Family Member 2:');
   textbackground(black);
   writeln;
   write('Please enter the second family member''s first name: ');
   readln(fname2);
   write('Please enter the second family memeber''s last name: ');
   readln(lname2);
   write('Please enter the second family member''s gender (1 letter please): ');
   readln(gender2);
   gender2 := upcase(gender2);
   writeln;

   // Family Member 3
   textbackground(blue);
    writeln('Family Member 3:');
   textbackground(black);
   writeln;
   write('Please enter the third family member''s first name: ');
   readln(fname3);
   write('Please enter the third family memeber''s last name: ');
   readln(lname3);
   write('Please enter the third family member''s gender (1 letter please): ');
   readln(gender3);
   gender3 := upcase(gender3);
  end
  {End if user wants to add 3 family members}

  // MAKE SURE THE LAST END HAS NO SEMICOLON!!!
  // IF USER CAN'T ADD A FAMILY MEMBER
  else
   begin
    writeln;
    writeln('Sorry but we couldn''t process that request. Why?');
    writeln('One of these reasons:');
    writeln('You added more family members than spots available (3).');
    writeln;
    writeln('You can only add, ', addFamilyMember, ' .');
    writeln('Please consider DELETING family members if you want to add one.');
    writeln;
    textbackground(blue);
     writeln('Press any button to continue.');
    textbackground(black);
    readkey;
   end;
  end; {Main}
  {End add data method}

  {Delete data method}
  if (dataDecide = 'D') then
  begin
   {Menu & Auth}
   clrscr;
   writeln;
   textbackground(red);
    writeln('DELETE A FAMILY MEMBER''S DATA.');
   textbackground(black);
   writeln;
   textbackground(red);
    writeln('BY DECIDING TO CONTINUE WITH THIS, YOU''RE GOING TO DELETE ALL DATA');
   textbackground(black);
   writeln;
   textbackground(red);
   writeln('FOR A SPCIFIC FAMILY MEMBER!');
   textbackground(black);
   writeln;
   textbackground(blue);
   write('Do you wish to continue?(y/n): ');
   textbackground(red);
   textbackground(black);
   readln(confirmDeleteFamilyMember);
   confirmDeleteFamilyMember := upcase(confirmDeleteFamilyMember);
   if (confirmDeleteFamilyMember = 'Y') or (confirmDeleteFamilyMember = 'N') then
   begin
   end
   else
   begin
    repeat
     textbackground(yellow);
      writeln('Sorry! That''s an invalid answer. Please try again.');
     textbackground(black);
     writeln;
     textbackground(red);
      writeln('Do you wish to continue?(y/n): ');
     textbackground(black);
     readln(confirmDeleteFamilyMember);
     confirmDeleteFamilyMember := upcase(confirmDeleteFamilyMember);
     writeln;
    until (confirmDeleteFamilyMember = 'Y') or (confirmDeleteFamilyMember = 'N');
   end;
   {End Menu & Auth}

   // If user answered no, then skips all of code to go to menu.

   {Select which family member to delete}
   if (confirmDeleteFamilyMember = 'Y') then
   begin
    clrscr;
    writeln;
    textbackground(red);
     writeln('PLEASE SELECT WHICH FAMILY MEMBER TO DELETE.');
    textbackground(black);
    writeln;
    writeln('Family member [1]: ', fname1);
    writeln('Family member [2]: ', fname2);
    writeln('Family member [3]: ', fname3);
    textbackground(red);
     writeln('OR ALL OF THE ABOVE. [9]');
    textbackground(black);
    writeln;
    write('Please select an option: ');
    readln(deleteFamilyMember);
    {Auth}
    if (deleteFamilyMember = 1) or (deleteFamilyMember = 2) or (deleteFamilyMember = 3) or (deleteFamilyMember = 9) then
    begin
    end
    else
    {ReAuth}
    begin
     repeat
      writeln;
      textbackground(red);
       writeln('Sorry! That''s an invalid answer. Please try again!');
       writeln;
       textbackground(blue);
        write('Please select a family member to delete: ');
       textbackground(black);
       readln(deleteFamilyMember);
      textbackground(black);
     until (deleteFamilyMember = 1) or (deleteFamilyMember = 2) or (deleteFamilyMember = 3) or (deleteFamilyMember = 9);
    end;
    {End ReAuth}
    {End auth}
   end;
   {End select which family member to delete}

   {Delete Family Member 1}
   if (deleteFamilyMember = 1) then
   begin
    writeln;
    textbackground(yellow);
     writeln('We are deleting family member 1''s data...');
     writeln;
     delay(500);
     writeln('Please wait...');
    textbackground(black);
    writeln;

    // Set family member 1's array values to blank or N
    fname1 := '';
    lname1 := '';
    gender1 := 'N';

    // Let family member 1 be added to array again
    familyData1 := false;
    addFamilyMember := addFamilyMember + 1;

    textbackground(green);
     writeln('Family member 1''s data has been deleted.');
     writeln;
     writeln('Please press any button to continue.');
    textbackground(black);
    readkey;
   end;
   {End Delete family member 1}

   {Delete family member 2}
   if (deleteFamilyMember = 2) then
   begin
    writeln;
    textbackground(yellow);
     writeln('We are deleting family member 2''s data...');
     writeln;
     delay(500);
     writeln('Please wait...');
    textbackground(black);
    writeln;

    // Set family member 2's array values to blank or N
    fname2 := '';
    lname2 := '';
    gender2 := 'N';

    // Let the data be added to array again
    familyData2 := false;
    addFamilyMember := addFamilyMember + 1;

    textbackground(green);
     writeln('Family member 2''s data has been deleted.');
     writeln;
     writeln('Please press any button to continue.');
    textbackground(black);
   end;
   {End delete family member 2}

   {Delete family member 3}
   if (deleteFamilyMember = 3) then
   begin
    writeln;
    textbackground(yellow);
     writeln('We are deleting family member 3''s data...');
     writeln;
     delay(500);
     writeln('Please wait...');
    textbackground(black);
    writeln;

    // Set family member 3's array values to blank or N
    fname3 := '';
    lname3 := '';
    gender3 := 'N';

    // Let the data be added to array again
    familyData3 := false;
    addFamilyMember := addFamilyMember + 1;

    textbackground(green);
     writeln('Family member 3''s data has been deleted.');
     writeln;
     writeln('Please press any button to continue.');
    textbackground(black);
    readkey;
   end;
   {End delete family member 3}

   {Delete all family members}
   if (deleteFamilyMember = 9) then
   begin
    writeln;
    textbackground(yellow);
     writeln('We are deleting EVERY family member''s data...');
     writeln;
     delay(500);
     writeln('Please wait...');
    textbackground(black);
    writeln;

    // Set family member's array values to blank or N
    fname1 := '';
    lname1 := '';
    gender1 := 'N';
    fname2 := '';
    lname2 := '';
    gender2 := 'N';
    fname3 := '';
    lname3 := '';
    gender3 := 'N';

    // Let all family members be added again to the array
    familyData1 := false;
    familyData2 := false;
    familyData3 := false;
    addFamilyMember := addFamilyMember + 3;

    textbackground(green);
     writeln('EVERY FAMILY MEMBER''S DATA HAS BEEN DELETED');
     writeln;
     writeln('Please press any button to continue.');
    textbackground(black);
    readkey;
   end;
   {End delete all family members}
  end;{Main}
  {End delete data method}

 end; // End Data Min

{******************************************************************************}

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
  {End Display Data}

  {*****************************************************************************
  HOW TO DISPLAY DATA A SPCIFIC WAY:
   - Then ask the user if they want the data to be displayed in a spcific way.
   - Can be in A-Z format. or Z-A format.
   - [FEAT REQ]: if it can be from newest to oldest people.
   - Gender (m/f/other).

  *****************************************************************************}

  {Ask user if they want to display data a spcific way}
  writeln;
  textbackground(blue);
   writeln('Do you want to see the data displayed in a different way?');
  textbackground(black);
  writeln;
  write('Please make a selection(y/n): ');
  readln(confirmSeeData);
  confirmSeeData := upcase(confirmSeeData);
  // Auth
  if (confirmSeeData = 'Y') or (confirmSeeData = 'N') then
  begin
  end
  // Reauth
  else
  begin
   repeat
    writeln;
    textbackground(red);
     writeln('Sorry, that''s not a valid answer. Please try again.');
    textbackground(black);
    writeln;
    write('Please make a selection: ');
    readln(confirmSeeData);
    writeln;
    confirmSeeData := upcase(confirmSeeData);
   until (confirmSeeData = 'Y') or (confirmSeeData = 'N');
  end;
  {End ask user if they want to display data a spcific way}

  {Ask user how they want to display data}
  // If user does want to see it, display how.
  if (confirmSeeData = 'Y') then
  begin
   clrscr;
   writeln;
   textbackground(green);
    writeln('Please make a selection on how to display data.');
   textbackground(black);
   writeln('************************************************');
   writeln;
   // Menu
   writeln('[F]irst name: A-Z');
   writeln('[L]ast name: A-Z');
   writeln('F[I]rst name: Z-A');
   writeln('L[A]st name: Z-A');
   writeln('[G]ender.');
   writeln;
   write('Please make a selection: ');
   readln(userChooseDisplayData);
  end
  // If user does NOT want to see any more, return to menu
  else
  begin
   writeln;
   textbackground(green);
   writeln('Press any button to go backto menu.');
   textbackground(black);
   readkey;
  end;
  {End ask user how they want to display data}


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

{******************************************************************************}

 outro; // Outro & end of program
 readkey;
end.
