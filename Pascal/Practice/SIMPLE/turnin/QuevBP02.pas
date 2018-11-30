{
    NAME: Brayan Quevedo Ramos
    CLASS: Computer Science 1
    DATE: sept 11, 2018

    PURPOSE: To use display options and to introduce yourself.
}

program simple;
uses
    crt;

begin {main}
      clrscr;

      {Introduction}
      textcolor(green);
      writeln('Hello there. Press any button to continue.');
      readkey;

      {Name}
      textcolor(yellow);
      textbackground(green);
      writeln('My name is Brayan Quevedo Ramos');
      readkey;

      {Age}
      textcolor(white);
      textbackground(blue);
      write('My current age is: ');
      readkey;
      writeln('15');
      readkey;

      {Class, Period}
      textcolor(black);
      textbackground(white);
      write('I am currently in: ');
      readkey;
      writeln('Computer Science 1');
      readkey;

      {Alert: End of Program}
      textbackground(black);
      textcolor(white);
      writeln('This is the end of the program. Goodbye!');
      readkey;

      {End program block}

end. {main}
