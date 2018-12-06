{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE:

 PURPOSE:
}

program programname;

{Libs}
uses crt;

 {getInt - Make sure user types an Integer}
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

{******************************************************************************}
begin {main}
 readkey;
end. {main}
