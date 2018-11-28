{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: October 18, 2018

 PURPOSE: To look at making lists
}

program lists;

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
                 writeln('Not an integer');
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
   dummy: integer;
   counter: integer;
   yards: integer;
   feet: integer;
   inches: integer;
   space: integer;

begin {main}
   clrscr;

   writeln('Method we use currently.');
   writeln ;

   {Initialize Counter}
      counter := 1;
      {Repeat Counter until it reaches 10}
      repeat
         dummy := counter * 5; {Counts By 5}
         writeln('count: ', counter, ' dummy: ', dummy);
         counter := counter + 1;
      until (counter > 10);
   {End Initialize Counter}

   {New Method Popup}
   writeln ;
   writeln('New method!');
   writeln ;
   {End New Method Popup}

   {For/Do Format}
      counter := 1;
      writeln('Count:':15, 'Dummy:':15);
      for counter := 1 to 10 do
         begin
            dummy := counter * 5; {Counts By 5}
            writeln(counter:15, dummy:15);
         end;
   {End for/Do Format}

   {Create Space}
      writeln ;
      writeln ;
      writeln ;
      writeln ;
      writeln ;
   {End Create Space}

   {Create Sample Table}
      writeln('This is a sample table that you can use':24);
      writeln('Count:':10, 'Dummy:':8);
      counter := 1;
      for counter := 1 to 10 do
         begin
            dummy:= counter * 5; {Counts by 5}
            writeln(counter:8, dummy:8);
         end;
   {End Create Sample Table}

   {Create Space}
   for space := 1 to 20 do
   begin
      writeln ;
   end;
   {End Create Space}

   {Yard Table}
   writeln('Yards':8, 'feet':8, 'inches':10);
   for counter := 40 downto 21 do
      begin
         yards := counter * 5;
         write(yards:8);
         feet := yards * 3;
         write(feet:8);
         inches := feet * 12;
         writeln(inches:10);
      end;
   {End Yard Table}

   writeln('Press any key to end program');
   readkey;
end. {main}
