{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: October, 22 2018

 PURPOSE: Setup for rest of file.
}

program ftoc;

{Libs}
uses crt;

     {PROCEDURES***************************************************************}

     {getInt -Make sure user types an Integer}
     Procedure getInt(ask:string; var num:integer);
        var
           numStr : string;
           code : integer;

        begin
           repeat
              write(ask);
              readln(numstr);
              val(numStr, num, code);
              if code <> 0 then
              begin
                 writeln('Not an integer ');
                 writeln('Press any key to try again.');
                 readkey;
                 clrscr;
              end;
           until (code = 0);
        end;
        {End getInt - Make sure user types an Integer}

     {END PROCEDURES***********************************************************}

{******************************************************************************}
var {main}
   userTemp: integer;
   repeatEasterEgg: integer;
   celsius: real;
   kelvin: real;
   userChoice: integer;
   table: char;
   tableShow: integer;
   tableCel: real;
   tableHold: integer;
   tableK: real;


begin {main}
   clrscr;

   {Introduction}
   textcolor(white);
   writeln('Hello and welcome.');
   writeln ;
   writeln('Welcome to the tempature converter application.');
   writeln ;
   writeln('You type in the tempature, and i''l convert it to whatever you want:)');
   writeln ;
   {*******}
   textcolor(black);
   textbackground(green);
   writeln('Press any button to continue!');
   textbackground(black);
   textcolor(white);
   {*******}
   readkey;
   {End Introdcuction}

   {Let's Roll Easter Egg}
   clrscr;
   textbackground(red);
   textcolor(white);
   {*****}
   for repeatEasterEgg:= 0 to 140 do
   begin
      delay(5);
      writeln('LET''S ROLL!');
      writeln ;
      repeatEasterEgg:= repeatEasterEgg + 1;
   end;
   {*****}
   textbackground(black);
   textcolor(white);
   {End Let's Roll Easter Egg}

   clrscr;

   {Ask User To Input Tempature}
    write('Ok, so just type in the fahrenheit. (Whole Numbers Only): ');
    readln(userTemp);
    writeln ;

    {Ask User What They Want To Convert It To}
     textbackground(blue);
     writeln('What Do You Want to convert it to?');
     textbackground(black);
     writeln('Press 1 for Celcius, or 2 For kelvin.');
     readln(userChoice);
     writeln ;

     {Convert To Celcius}
     if (userChoice = 1) then
     begin
       celsius := (userTemp - 32) * 0.55;
       textbackground(red);
       writeln('The celsius reselt from the number ',userTemp,' is: ',celsius);
       textbackground(black);
       writeln ;
       textbackground(green);
       writeln('How did this work?');
       textbackground(black);
       writeln('First you figure out what your starting number is.');
       writeln('Then you subtract 32 from the number.');
       writeln('Then you multiply the result of that by 5/9');
       writeln('Then you get your result!!');
       writeln ;
       writeln ;
       {Ask User To See Table}
        write('Do you want to see the table of conversion?');
        write(' (From Farenheit to Celcius) (y/n): ');
        readln(table);
        readkey;
       {End Ask User To See Table}
        table := upcase(table);
        {Show Table If Yes}
        if table = 'Y' then
        begin
        writeln('Fahr':10, 'Celc':10);
           for tableHold := 1 to 22 do
           begin
              tableShow := tableHold *10;
              write(tableshow:10);
              tableCel := tableShow - 32;
              tableCel := tableCel * 0.55;
              writeln(tableCel:15);
           end;
           readkey;
        end;
        {End Show Table If Yes}
     end;
     {End Convert To Celcius}

    {Convert To Kelvin}
    if not(userChoice = 1) then
    begin
       kelvin := (userTemp - 32) * 5/9 + 273.15;
       textbackground(red);
       writeln('The Kelvin result from the number ',userTemp, ' is: ', kelvin);
       textbackground(black);
       writeln ;
       textbackground(green);
       writeln('How did this conversion work?');
       textbackground(black);
       writeln('First, pick out a number you want to convert into Kelvin.');
       writeln('Then, you subtract 32, from the number.');
       writeln('Then nultiply that result by 5/9.');
       writeln('Then with that number, add 273.15 and BOOM!');
       writeln('You have the result!');
       {Ask User To See Table}
        write('Do you want to see the table of conversion?');
        write(' (From Farenheit to Celcius) (y/n): ');
        readln(table);
        readkey;
       {End Ask User To See Table}
        table := upcase(table);
        {Show Table If Yes}
        if table = 'Y' then
        begin
        writeln('Fahr':10, 'Celc':10);
           for tableHold := 1 to 22 do
           begin
              tableShow := tableHold *10;
              write(tableshow:10);
              tableK := tableShow - 32;
              tableK := tableK * 0.55;
              tableK := tableK + 273.15;
              tableK := tableK * 100;
              writeln(tableK);
           end;
           readkey;
        end;
        {End Show Table If Yes}
    end;
end. {main}
