{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: November 6, 2018

 PURPOSE: Learn how to create windows on THY screen.
}

program boxes;

{Libs}
uses crt;

{******************************************************************************}
 var {main}
 dummy: integer;

begin {main}

 {EXAMPLE BOXES BELOW
 window(3, 4, 28, 10);
 textbackground(red);
 textcolor(white);
 clrscr;
 write('Hello');

 window(32, 15, 52, 19);
 textbackground(blue);
 clrscr;
 gotoxy(5, 2);
 writeln('Today');

 window(20, 8, 32, 12);
 textbackground(green);
 clrscr;
 write('Third Box');

 window(35, 8, 45, 9);
 textbackground(black);
 clrscr;
 writeln('Some text.');
 writeln('MOAR TEXT');
 END EXAMPLE BOXES}

 textcolor(white);

 write('Box 1', 'Box2':9, 'Box 3':11);

 window(1, 3, 10, 15);
 textbackground(red);
 clrscr;
 writeln('Red');

 window(11, 3, 20, 15);
 textbackground(blue);
 clrscr;
 writeln('Blue');

 window(21, 3, 30, 15);
 textbackground(green);
 clrscr;
 writeln('Green');

 readkey;
end. {main}
