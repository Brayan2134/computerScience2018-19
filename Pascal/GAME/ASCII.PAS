{Demo for Class
 ascii symbols}

Program ascii;

Uses
   crt;
Var
   letter:integer;
   ch:char;

begin
     randomize;
     clrscr;
     for letter:= 0 to 125 do
         write(letter:5,CHR(letter):5);
     writeln;
     write('press any key to see rest of chart');
     readkey;
     clrscr;
     for letter:= 126 to 255 do
         write(letter:5,CHR(letter):5);
     writeln;
     write('press any key to see rest of chart');
     readkey;
     writeln;
     write('Input any key -- pay attention to what you see ');
     ch := readkey;
     writeln(ORD(ch));
     writeln('Press any key to see a character');
     writeln('(Run it again and see if you get the same character');
     readkey;
     writeln(chr(random(256)));
     writeln('Press the ESC key');
     ch := readkey;
     if ch = #27 then
        writeln('escape');

     write('Press any key to end program');
     readkey;
     end.
