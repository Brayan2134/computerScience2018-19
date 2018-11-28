{
 NAME: Brayan Quevedo Ramos
 CLASS: CS1
 DATE: October 25, 2018
 PURPOSE: To Calculate FtoC.

 NOTES:
 Left Is userChoice
 Right is userPick
 Convert By userNum := userUse
 1 - 1 C To C then do nothing.
 1 - 2 C To F
 1 - 3 C To F
 2 - 1 F To C
 2 - 2 F To F then do nothing.
 2 - 3 F To K
 3 - 1 K To C
 3 - 2 K To F
 3 - 3 K To K then do nothing.

 - WHEN USER INPUTS NUMBERS IT DOESN'T CHECK TO SEE IF THEY INPUT NON-INT
}
program ftoc;
uses
 crt;

 {Procedures*******************************************************************}
 {Procedure How To Calc F/C}
  procedure howToCalc;
   var
    answer: char;
    begin
     textbackground(blue);
      writeln('Once you''ve made a selection, press the ENTER button to continue.');
     textbackground(black);
     writeln ;
     {Repeat Phrase Until User Enters Y/N}
      repeat
       write('Would You like to see how to calculate Fahrenheit or Celsius manually?(y/n): ');
       readln(answer);
       answer := upcase(answer);
      until (answer = 'Y') or (answer='N');
     {End Repeat Phrase Until User Enters Y/N}
     {Show How To Calculate FtoC}
     if (answer = 'Y') then
     begin
      writeln ;
      textbackground(green);
       delay(550);
       writeln('Here''s how to calculate Fahrenheit from Celsius');
      textbackground(black);
      writeln('***********************************************');
      writeln ;
      delay(660);
      writeln('1) You take the number (f) and multiply it by 1.8.');
      delay(660);
      writeln('2) Then you just subtract by 32.');
      writeln ;
      textbackground(green);
       delay(550);
       writeln('Here''s how to calculate Celsius from Fahrenheit');
      textbackground(black);
      writeln('***********************************************');
      writeln ;
      delay(660);
      writeln('1) You multiply the Celsius by 1.8');
      writeln('2) Then you just add 32.');
      writeln ;
      textbackground(blue);
       writeln('Press any key to continue');
      textbackground(black);
      readkey;
     end
     {End Show How To Calculate FtoC}
     else
      begin
      writeln ;
      textbackground(blue);
       writeln('Press any key to continue');
      textbackground(black);
      readkey;
      end;
    end;
 {End Procedure How To Calc F/C}

 {Procedure How To Calc K}
  procedure calcKelvin;
  var
   getKelvin: char;
  begin
   writeln ;
   {Repeat Until User Types Y/N}
   repeat
    write('Would you like to learn how to calculate Kelvin?(y/n): ');
    readln(getKelvin);
    getKelvin := upcase(getKelvin);
   until (getKelvin = 'Y') or (getKelvin = 'N');
   {If User Types 'Y' Then Show Them How To Get K}
   if (getKelvin = 'Y') then
   begin
    writeln ;
    textbackground(green);
     delay(660);
     writeln('How To Calculate Kelvin From Fahrenheit.');
    textbackground(black);
    writeln('****************************************');
    writeln ;
    delay(660);
    writeln('1) First you subtract 32.');
    writeln('2) Then you multiply by 5/9.');
    writeln('3) Lastly, just add 273.15');
    writeln ;
    textbackground(green);
     delay(660);
     writeln('How To Calculate Kelvin From Celsius');
    textbackground(black);
    writeln('************************************');
    writeln ;
    writeln('1) You add 273.15.');
    writeln ;
    textbackground(blue);
     writeln('Let''s Continue! (Press Any Key To Continue)');
    textbackground(black);
    readkey;
   end
   {End If User Types 'Y' Then Show Them How To Get K}
   else
    begin
     writeln ;
     textbackground(blue);
      writeln('Press Any Key To Continue.');
     textbackground(black);
     readkey;
    end;
   {End Repeat Until User Types Y/N}

  end;
 {End Procedure How To Calc K}
 {End Procedures***************************************************************}

var
 userNum: integer;
 userUse: real;
 userChoice: integer;
 userPick: integer;
 loop: integer;
 restart: boolean;
 convertAgain: char;
 userSeeTable: char;
 f: integer;
 c: real;
 c2: integer;
 f2: real;

begin

 {Introduction}
  textcolor(white);
  delay(500);
  writeln('Hello and welcome to the FtoC Program!');
  writeln ;
  delay(550);
  writeln('In this program you will input a number,');
  writeln('and i''ll change it to Celsius or Kelvin.');
  writeln ;
  delay(550);
  textbackground(blue);
   writeln('Click any button to begin!');
  textbackground(black);
  readkey;
  clrscr;
 {End Introduction}

  howToCalc; //Ask User How To Calc
  calcKelvin; //Ask User How To Calc Kelvin

  {AU: For Number}
  clrscr;
  write('THE CONVERTER':65);
  repeat //REPEAT EVERYTHING BELOW IF USER WANTS TO CONVERT ANOTHER NUMBER
  restart := false;
  {Whitespace Loop}
  for loop := 1 to 5 do
  begin
   writeln ;
   loop := loop + 1;
  end;
  {End Whitespace Loop}
  textbackground(blue);
   writeln('Please press enter when done.');
  textbackground(black);
  writeln ;
  {Repeat Until User Enters Int}
  repeat
   write('Please enter a number: ');
   readln(userNum);
  until (userNum <> 0);
  {End Repeat Until User Enters Int}
  writeln ;
  textbackground(green);
   writeln('What kind of number did you insert?');
  textbackground(black);
  repeat
   begin
    writeln('Press 1 for C (Celsius), 2 for F (fahrenheit), or 3 for K (Kelvin).');
    readln(userChoice);
   end;
  until (userChoice = 1) or (userChoice = 2) or (userChoice = 3);
  {End Repeat Until User Enters Choice}
  {Repeat Ask User What To Convert It To}
  writeln ;
  textbackground(green);
   writeln('What Do You Want To Convert It To?');
  textbackground(black);
  repeat
   begin
    writeln('1 For Celsius, 2 For Fahrenheit, or 3 for Kelvin.');
    readln(userPick);
   end;
  until (userPick = 1) or (userPick = 2) or (userPick = 3);
  {End Repeat Ask User What To Convert It To}
  {End AU: For Number}

  {CONVERSION}
  if (userChoice = userPick) then
   begin
    writeln('Oops, I can''t convert anything. Why?');
    writeln('You choose the option to convert it to the same thing smh.');
    {Convert Again}
     repeat
      write('Wanna Convert Again?(y/n): ');
      readln(convertAgain);
      convertAgain := upcase(convertAgain);
     until(convertAgain = 'Y') or (convertAgain = 'N');
     if (convertAgain = 'Y') then
      begin
       restart := true;
      end
     else
      begin
       restart := false;
      end;
     {End Convert Again}
   end
  else;

   {1 - 2 (C To F)}
   if (userChoice = 1) and (userPick = 2) then
    begin
     userUse := userNum;
     userUse := (userUse * 1.8) + 32;
     writeln('C To F Conversion Is: ', userUse);
     {Convert Again}
     repeat
      write('Wanna Convert Again?(y/n): ');
      readln(convertAgain);
      convertAgain := upcase(convertAgain);
     until(convertAgain = 'Y') or (convertAgain = 'N');
     if (convertAgain = 'Y') then
      begin
       restart := true;
      end
     else
      begin
       restart := false;
      end;
     {End Convert Again}
    end;
   {End 1 - 2 (C To F)}

   {1 - 3 (C To K)}
   if (userChoice = 1) and (userPick = 3) then
    begin
     userUse := userNum;
     userUse := userUse + 273.15;
     writeln('C To K Conversion Is: ', userUse);
     {Convert Again}
     repeat
      write('Wanna Convert Again?(y/n): ');
      readln(convertAgain);
      convertAgain := upcase(convertAgain);
     until(convertAgain = 'Y') or (convertAgain = 'N');
     if (convertAgain = 'Y') then
      begin
       restart := true;
      end
     else
      begin
       restart := false;
      end;
     {End Convert Again}
    end;
   {End 1 - 3 (C To K)}

   {2 - 1(F To C)}
   if (userChoice = 2) and (userPick = 1) then
    begin
     userUse := userNum;
     userUse := (userUse - 32)/1.8;
     writeln('F To C Conversion Is: ', userUse);
     {Convert Again}
     repeat
      write('Wanna Convert Again?(y/n): ');
      readln(convertAgain);
      convertAgain := upcase(convertAgain);
     until(convertAgain = 'Y') or (convertAgain = 'N');
     if (convertAgain = 'Y') then
      begin
       restart := true;
      end
     else
      begin
       restart := false;
      end;
     {End Convert Again}
    end;
   {End 2 - 1 (F To C)}

   {2 - 3 (F To K)}
   if (userChoice = 2) and (userPick = 3) then
    begin
     userUse := userNum;
     userUse := (userUse + 459.67) * 0.55555555555;
     writeln('F To K Conversion Is: ', userUse);
     {Convert Again}
     repeat
      write('Wanna Convert Again?(y/n): ');
      readln(convertAgain);
      convertAgain := upcase(convertAgain);
     until(convertAgain = 'Y') or (convertAgain = 'N');
     if (convertAgain = 'Y') then
      begin
       restart := true;
      end
     else
      begin
       restart := false;
      end;
     {End Convert Again}
    end;
   {End 2 - 3 (F To K)}

   {3 - 1 (K To C)}
   if (userChoice = 3) and (userPick = 1) then
    begin
     userUse := userNum;
     userUse := userUse - 273.15;
     writeln('K To C Conversion Is: ', userUse);
     {Convert Again}
     repeat
      write('Wanna Convert Again?(y/n): ');
      readln(convertAgain);
      convertAgain := upcase(convertAgain);
     until(convertAgain = 'Y') or (convertAgain = 'N');
     if (convertAgain = 'Y') then
      begin
       restart := true;
      end
     else
      begin
       restart := false;
      end;
     {End Convert Again}
    end;
   {End 3 - 1 (K To C)}

   {3 - 2 (K To F)}
   if (userChoice = 3) and (userPick = 2) then
    begin
     userUse := userNum;
     userUse := userUse * 0.555555555 - 459.67;
     writeln('K To F Conversion Is: ', userUse);
     {Convert Again}
     repeat
      write('Wanna Convert Again?(y/n): ');
      readln(convertAgain);
      convertAgain := upcase(convertAgain);
     until(convertAgain = 'Y') or (convertAgain = 'N');
     if (convertAgain = 'Y') then
      begin
       restart := true;
      end
     else
      begin
       restart := false;
      end;
     {End Convert Again}
    end;
   {End 3 - 2 (K To F)}
  {END CONVERSION}

  {Ask To Repeat Entire Process}
  until (restart = false);
  {End Ask To Repeat Entire Process}

  {AU: See Table?}
  clrscr;
  writeln ;
  repeat
   write('Do You Want To See A Conversion Table OF F/C/K?(y/n):');
   readln(userSeeTable);
   userSeeTable:= upcase(userSeeTable);
  until (userSeeTable = 'Y') or (userSeeTable = 'N');
  {End AU: See Table?}

  {Table}
  if (userSeeTable = 'Y') then
   begin
   writeln ;
    writeln('F TO C TABLE':65);
    write('Fahrenheit':10);
    writeln('Celsius':10);
     f := -80; //Set F Value For Table
     for loop := -8 to 25 do //F-C Table
      begin
       c := 0;
       c := (f - 32)/1.8;
       write(f:10);
       writeln(c:10:5);
       f := f + 10;
      end; //End F-C Table
      writeln ;
      delay(3000);
      writeln('C TO F TABLE':65);
      write('Celsius':10);
      writeln('Farenheit':10);
      f2 := 0; //Set F value For Second Table
      c2 := 0; // Sets C Value For Second Table
      for loop := 0 to 22 do //C-F Table
       begin
        f2 := (c2 * 1.8) + 32;
        write(c2:10);
        writeln(f2:10:5);
        c2 := c2 + 5;
       end;
      writeln ;
      textbackground(blue);
       writeln('Press any key to continue.');
      textbackground(black);
      readkey;
   end;
  {End Table}

  {Conclusion}
  clrscr;
  writeln ;
  writeln('You have reached the end of the program.');
  writeln ;
  writeln('Thank you for using this software.');
  writeln ;
  textbackground(blue);
   writeln('Press any button to end the program.');
  textbackground(black);
  readkey;
  {End Conclusion}
end.
