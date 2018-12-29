{   NAME:  Brayan Quevedo Ramos
    CLASS: Computer Science 1
    DATE:  Oct 2, 2018

    PURPOSE:

}

program numbers;

uses
   crt;

{************Procedures************}

{Intro/Guess}
procedure pickANumber(var guess: integer);
begin
   write('Guess the roll of the die: ');
   readln(guess);
end;

{Rolling Dice}
procedure rollDie(var die1 : integer);
begin
   die1 := random(6) + 1;
   writeln('You rolled a ', die1);
end;

{Win/Lose: Result}
procedure winOrLose(var guess, die1 : integer);
begin
   if (guess = die1) then
      writeln('You Win')
   else
      writeln('You lose');
end;



{***********MAIN************}

var   {main}
   die1, guess : integer;

begin  {main}
   randomize;

   {User Guess}
   pickANumber(guess);

   {Roll Dice...}
   rollDie(die1);

   {Show if User wins or loses}
   textcolor(white);
   textbackground(red);
   winOrLose(guess, die1);

   {End of Program}
   textbackground(black);
   writeln('Press any key to end program...');
   readkey;
end. {main}
