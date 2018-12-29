{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: November 6, 2018

 PURPOSE: To create a payroll program that calcs
          the name/hours/wage/gross/state/federal/ss.
}

program payroll;

{Libs}
uses crt, graph;

 const
  FED_TAX = 0.15;
  STATE_TAX = 0.05;
  SS_TAX = 0.1;

  {Introduction Logo Procedure}
   procedure Intro;
    var
    gd, gm: smallint;
    x: integer;

    begin
    {Open graph session}
    gd := DETECT;
    initgraph(gd, gm, '');
    {Make yellow border (left of text}
    delay(550);
    setcolor(yellow);
    for x := 1 to 640 do
     begin
      line(1, 640, x, 1);
     end;
    {make yellow border (right of text}
    delay(550);
    setcolor(yellow);
    for x := 640 to 1280 do
     begin
      line (640, 640, x, 1);
     end;
    {Display text}
    delay(550);
    setcolor(red);
    settextstyle(defaultfont, horizdir, 8);
    outtextxy(350, 300, 'Instinct');
    delay(1500);
    {End graph session}
    closegraph;
   end;
  {End Introduction Logo Procedure}

  {Outro Logo}
   procedure outro;
    var
    gd, gm: smallint;
    x: integer;

    begin
    {Open graph session}
    gd := DETECT;
    initgraph(gd, gm, '');
    {Make yellow border (left of text}
    delay(550);
    setcolor(cyan);
    for x := 1 to 640 do
     begin
      line(1, 640, x, 1);
     end;
    {make yellow border (right of text}
    delay(550);
    setcolor(cyan);
    for x := 640 to 1280 do
     begin
      line (640, 640, x, 1);
     end;
    {Display text}
    delay(550);
    setcolor(red);
    settextstyle(defaultfont, horizdir, 8);
    outtextxy(350, 300, 'Goodbye!');
    delay(1500);
    {End graph session}
    closegraph;
   end;
  {End Outro Logo}

  {Get Real}
   procedure getreal(var num: real);
    var
     numStr : string;
     code: integer;
    begin
     repeat
      readln(numstr);
      val(numStr, num, code);
      if code <> 0 then
       begin
        writeln('Not an integer, try again');
        readkey;
        clrscr;
       end;
      until (code = 0);
     end;
  {End Get Real}

{******************************************************************************}
var
 name: string;
 hours: real;
 wage: real;
 employeeGross: real;
 state: real;
 federal: real;
 ss: real;
 otHours: real;
 otWage: real;
 restart: char;
 employeeNet: real;
 ot: real;

begin {main}

 intro; //logo Intro

 repeat // Check Bottom Of Code For Until

 {Background}
 window(1, 1, 120, 50);
 textbackground(green);
 clrscr;
 {End Background}

 {Name}
  delay(500);
  window(5, 5, 22, 8);
  textbackground(blue);
  textcolor(white);
  clrscr;
  write('Name: Last, First');
 {End Name}

 {User Inputs Name}
 delay(600);
 window(25, 5, 50, 8);
 textbackground(red);
 clrscr;
 readln(name);
 {End User Inputs Name}

 {How Many Hours Worked}
  delay(600);
  window(5, 12, 22, 15);
  textbackground(blue);
  clrscr;
  write('Hours Worked:');
 {End How Many Hours Worked}

 {User Input How Many Hours Worked}
  delay(500);
  window(25, 12, 50, 15);
  textbackground(red);
  clrscr;
  getreal(hours);
 {End User Input How Many Hours Worked}

 {Wage}
  delay(600);
  window(55, 12, 72, 15);
  textbackground(blue);
  clrscr;
  write('Wage:');
 {End Wage}

 {User Input Wage}
  delay(500);
  window(75, 12, 100, 15);
  textbackground(red);
  clrscr;
  getreal(wage);
 {End User Input Wage}

 {Overtime Hours}
  delay(550);
  window(5, 18, 22, 21);
  textbackground(blue);
  clrscr;
  write('Overtime Hours:');
 {End Overtime Hours}

 {User Input Overtime Hours}
  delay(550);
  window(25, 18, 50, 21);
  textbackground(red);
  clrscr;
  getreal(otHours);
 {End User Input Overtime Hours}

 {SEE IF EMPLOYEE WORKED OVERTIME}
 if (otHours > 0) then
  begin
  {Overtime Pay}
   delay(600);
   window(55, 18, 72, 21);
   textbackground(blue);
   clrscr;
   write('Overtime Pay:');
  {End Overtime Pay}
 {User Input Overtime Pay}
  delay(550);
  window(75, 18, 100, 21);
  textbackground(red);
  clrscr;
  getreal(otWage);
 {End User Input Overtime Pay}
  end
 else
  begin
   otHours := 0;
   otWage := 0;
  end;

  ot := otHours * otWage; // Calc Overtime
  employeeGross := hours * wage; // Employee Gross
  employeeGross := employeeGross + ot; // Add OT To Gross
  federal := employeeGross * FED_TAX; // Calc Federal tax
  state := employeeGross * STATE_TAX; // Calc State tax
  ss := employeeGross * SS_TAX; // Calc State Tax
  employeeNet := (employeeGross - federal); // Subtract Federal Tax
  employeeNet := (employeeNet - state); // Subtract State Tax
  employeeNet := (employeeNet - ss); // Subtract Social Security tax

  {Employee Gross}
   delay(1000);
   window(5, 27, 22, 30);
   textbackground(blue);
   clrscr;
   write('Employee Gross:');
  {End Employee Gross}

  {Display Employee Gross}
   delay(400);
   window(25, 27, 50, 30);
   textbackground(red);
   clrscr;
   write(employeeGross:6:2);
  {End Display Employee Gross}

  {Federal}
   delay(400);
   window(55, 27, 72, 30);
   textbackground(blue);
   clrscr;
   write('Federal Tax:');
  {End Federal}

  {Display Federal Tax}
   delay(440);
   window(75, 27, 100, 30);
   textbackground(red);
   clrscr;
   write(federal:6:2);
  {End Display Federal Tax}

  {State}
   delay(660);
   window(5, 33, 22, 36);
   textbackground(blue);
   clrscr;
   write('State Tax:');
  {End State}

  {Display State}
   delay(400);
   window(25, 33, 50, 36);
   textbackground(red);
   clrscr;
   write(state:6:2);
  {End Display State}

  {Social Security}
   delay(400);
   window(55, 33, 72, 36);
   textbackground(blue);
   clrscr;
   write('Social Security:');
  {End Social Security}

  {Display Social Security}
   delay(440);
   window(75, 33, 100, 36);
   textbackground(red);
   clrscr;
   write(ss:6:2);
  {End Display Social Security}

  {Net Pay}
   delay(660);
   window(5, 39, 22, 42);
   textbackground(blue);
   clrscr;
   write('Net Pay:');
  {End Net Pay}

  {Display Net Pay}
   delay(400);
   window(25, 39, 50, 42);
   textbackground(red);
   clrscr;
   write(employeeNet:6:2);
  {End Display Net Pay}

  {Redo Again}
   delay(440);
   window(5, 45, 22, 47);
   textbackground(black);
   clrscr;
   writeln('Input Another?');

   delay(440);
   window(25, 45, 50, 47);
   textbackground(white);
   textcolor(black);
   clrscr;
   readln(restart);
   restart := upcase(restart);
   clrscr;
   until(restart = 'N'); // Repeat Code If User Wants To Input Further EMPLOYEES
  {End Redo Again}

   outro; // Outro Logo

 readkey;
end. {main}
