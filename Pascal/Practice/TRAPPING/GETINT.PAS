{  error checks to make sure user input is an integer  }

Procedure getInt(var num : integer);
var
   numStr : string;
   code : integer;
begin
   repeat
      readln(numstr);
      val(numStr, num, code);
      if code <> 0 then
      begin
         writeln('Not an integer ');
         readkey;
         clrscr;
      end;
   until (code = 0);
end;
