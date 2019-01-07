{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: Sept 10, 2018

 PURPOSE: To look at different formats for  loops.
}

program loops;

{Libs}
uses crt;

     {******Procedure Area******}

     {******End Procedures******}

     var {main}
     dummy : integer;
     gender : char;

begin {main}
      clrscr;

      {Gender Loop}
      repeat
            write('Enter your gender (M/F/X): ');
            readln(gender);
            gender := upcase(gender);
      until
           (gender = 'F');

      {******************}

      {Counting loop}
      dummy := 2;
      repeat
            writeln('Count ', dummy);
            dummy := dummy + 5;
      until
           (dummy >= 50);


      write('Press any button to end program.');
      readkey;

end. {main}
