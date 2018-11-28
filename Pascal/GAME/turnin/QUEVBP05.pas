{
 NAME: Brayan Quevedo Ramos
 CLASS: Computer Science 1
 DATE: October 11, 2018

 PURPOSE: To make a basic game.

 PROJECT NOTES:
    Constants Retreieved from StackOverflow question.
    .. From StackOverflow
    Learned X.Y From  A Learn Pascal PDF

 HOW IT SHOULD WORK:
    - The User reads intro
    - The User types y/n to roll the dice.
    - User recieves number.
    - 3 PLAYERS

    (Dice Roll)
    (Works) - If user WANTS to roll higher then roll dice (again).
    (Works) - If Number is lower than the dice roll, then 0 points addded.
    (Works) - If Number is higher than the dice roll, add the new dice roll points.
    (Works) - If user DOES NOT want to roll higher number, they just get points added.
    (Works) - Repeat For Players 2/3/X

    (How To Win)
    - Once A user reaches 100 points, they win.

    (KNOWN BUGS)
    - CONGRATULATE DON'T WORK.

    ******************************

    AUTHOR'S NOTE:
       -1A.0- (Project Request)
          - Make it so the user can change what the max score/winning score is.

       -1A.1- (Project Request Cont)
          - Variable Used.

       -1A.2- (Project Request Cont)
          - (See Figure Below) What the interaction would be.
}

program game;
uses
   crt;

   {CONSTANTS******************************************************************}

      {Winning Score}
      const
         winScore = 100;
         {See Authors Note: 1A.0***********************************************}
         {winScore = max;}
         {*********************************************************************}

      type
         roll = 1..6;
         score = integer;
         player = record
            playerName: string;
            playerPoints: score;
            winStatus: Boolean
      end;
      {End Winning Score}

   {END CONSTANTS**************************************************************}

   {FUNCTIONS******************************************************************}
      {Roll Dice}
         function rollDice: roll;
            begin
               rollDice := random(6) + 1
            end;
      {End Roll Dice}
   {END FUNCTIONS**************************************************************}

   {PROCEDURES*****************************************************************}
      {The Turn}
         procedure turn (var P: Player);
            var
               answer: char;
               roll: roll;
               newPoints: Score;
               keepPlaying: Boolean;
            begin
               newPoints := 0;
               writeln ;

               {******}
               textbackground(red);
               writeln('It''s time to roll ', P.playerName, ' !');
               textbackground(black);
               {******}
               {******}
               textbackground(green);
               writeln('You currently have: ', P.playerPoints, ' points.');
               textbackground(black);
               {******}
                {User Chooses To Roll Again}
                writeln('Let''s roll the dice? (y/n) ');
                readln(answer);
                keepPlaying := upcase(answer) = 'Y';
                while keepPlaying do
                   begin
                      roll := rollDice;
                      if roll = 1 then
                         begin
                            newPoints := 0;
                            keepPlaying := false;
                            {******}
                            textbackground(blue);
                            writeln('Oof you rolled a 1. You won''t receieve points.');
                            textbackground(black);
                            {******}
                         end
                      else
                         begin
                         newPoints := newPoints + roll;
                         write('You rolled: ', roll:1);
                         writeln(' (Updated) Points: ', newPoints);
                         write('Let''s roll again? (y/n): ');
                         readln(answer);
                         keepPlaying := upcase(answer) = 'Y'
                      end
                  end;
                  {Update player Score/check for winner}
                  writeln ;
                  if newPoints = 0 then
                     begin
                          {******}
                          textbackground(green);
                          writeln(P.playerName, ' has: ', P.playerPoints, ' points.');
                          textbackground(black);
                          {******}
                     end
                  else
                     begin
                        P.playerPoints := p.playerPoints + newPoints;
                        {******}
                        textbackground(green);
                        writeln(P.playerName, ' has: ', P.playerPoints);
                        textbackground(black);
                        {******}
                        P.winStatus := P.playerpoints > winScore;
                     end
          end;
      {End Turn}

      {Congratulate User when win}
      procedure Congratulate(Winner: player);
         begin
            writeln ;
            write('CONGRATS ', Winner.playerName, ' !');
            writeln('You won with ', Winner.playerPoints, ' !');
            writeln
         end;
      {End Congratulate User when win}
   {END PROCEDURES*************************************************************}

   var {Main}
      player1, player2, player3: Player;

      {SEE AUTHORS NOTE(1A.1)**************************************************}
      {max: integer;}
      {SEE AUTHORS NOTE(1A.1)**************************************************}

   begin {Main}
      clrscr;

      {Introduction}
         textcolor(white);
         writeln('Hello and welcome to a dice rolling game.');
         writeln ;
         delay(1000);
         writeln('This is a game where you roll a dice,');
         writeln ;
         delay(1000);
         writeln('once you roll the dice you have the option of');
         writeln ;
         delay(1000);
         writeln('either choosing to roll again for a higher number,');
         writeln ;
         delay(1000);
         writeln('or stick with the number you have.');
         writeln ;
         delay(1000);
         writeln('If you roll again and the number is not higher then');
         writeln ;
         delay(1000);
         writeln('you get 0 points.');
         writeln ;
         delay(300);
         writeln('Now that you know what this game''s about,');
         {******}
         writeln ;
         writeln('*************');
         writeln ;
         textcolor(red);
         textbackground(white);
         delay(300);
         writeln('Click any button to start!');
         textcolor(white);
         textbackground(black);
         {******}
         readkey;
         clrscr;
      {End Introduction}

      {SEE AUTHORS NOTE(1A.2)**************************************************}
      {Set Max Points}
      {
      writeln('Before we begin there''s something you need to know.');
      writeln('What do you want to play to?');
      write('Note: The bigger the number the longer the game session will be.');
      readln(max);
      readkey;
      }
      {End Set Max Points}
      {SEE AUTHORS NOTE(1A.2)**************************************************}

      {Grab User Information}
         write('What''s your name? (First Player): ');
         readln(player1.playerName);
         player1.playerPoints := 0;
         player1.winStatus := false;

         write('What''s your name? (Second Player): ');
         readln(player2.playerName);
         player2.playerPoints := 0;
         player2.winStatus := false;

         write('What''s your name? (Third Player): ');
         readln(player3.playerName);
         player3.playerPoints := 0;
         player3.winStatus := false;
      {End Grab User Information}

      {Roll Dice}
      rollDice;
      repeat
         if not player1.winStatus then turn(player2);
         if not player2.winStatus then turn(player3);
         if not player3.winStatus then turn(player1)
      until
         player1.winStatus or player2.winStatus or player3.winStatus;

       {Announce That Won}
       if player1.winStatus then
          congratulate(player1)
       else if player2.winStatus then
          congratulate(player2)
       else if player3.winStatus then
          congratulate(player3)
       else
          writeln('You shouldn''t be seeing this. Contact ADMIN for help.')

   end. {Main}
