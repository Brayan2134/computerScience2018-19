{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: Sept 17, 2018

 PURPOSE:
}

program options;

{Libs}
uses crt;
     var
        num1 : real;

        username : string;

        gender : char;

begin {main}
      writeln('Hello');
      {delay(1000);}

      writeln('World');
      gotoxy(20, 10);

      writeln('End of program');
      writeln('Thank you');

      num1 := 320.123456789;
      writeln(num1:0:2);

      username := 'cham123';
      writeln(username:15);

      gender := 'M';
      gender := upcase(gender);
      writeln(gender);

      readkey;
end. {main}
