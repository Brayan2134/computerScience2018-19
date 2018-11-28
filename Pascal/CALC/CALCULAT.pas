{
 NAME: Brayan Quevedo Ramos
 CLASS: Computer Science 1
 DATE:  Sept 13, 2018

 PURPOSE: Is to learn how to use the 'gets' command.
          Also to understand how Pascal does math.
          Display answer (in given format).
}

{
 PLAN:
      1- Decide what the 2 numbers are.
      2- Preform the math operation.
      3- Display the answer.
}

program calculat;
uses
    crt;

    var
    {Addition - NO USER INPUT}
    num1, num2 : integer;
    sum : integer;

    {Subtraction - NO USER INPUT}
    snum1, snum2 : integer;
    ssum: integer;

    {Multiplication - NO USER INPUT}
    ms1, ms2 : integer;
    msum : integer;

    {Mystery - NO USER INPUT}
    myst1, myst2 : integer;
    mysum : integer;

    {Divison - NO USER INPUT}
    dnum1, dnum2 : integer;
    dsum : real;

begin
     clrscr;

     {Addition - NO USER INPUT}
     num1 := 15;
     num2 := 10;
     sum := num1 + num2;
     writeln(num1, ' + ', num2, ' = ', sum);
     readkey;

     {Subtraction - NO USER INPUT}
      snum1 := 22;
      snum2 := 15;
      ssum := snum1 - snum2;
      writeln(snum1, ' - ', snum2, ' = ', ssum);
      readkey;

      {Multiplication - NO USER INPUT}
      ms1 := 15;
      ms2 := 22;
      msum := ms1 * ms2;
      writeln(ms1, ' * ', ms2, ' = ', msum);
      readkey;

      {Division - NO USER INPUT}
      dnum1 := 12;
      dnum2 := 6;
      dsum := dnum1 / dnum2;
      writeln(dnum1, ' / ', dnum2, ' = ', dsum);
      readkey;

      {Mystery - NO USER INPUT}
      {MYSTERY = REMAINDER}
      myst1 := 24;
      myst2 := 22;
      mysum := myst1 mod myst2;
      writeln(myst1, ' MOD ', myst2, ' = ', mysum);
      readkey;


end.
