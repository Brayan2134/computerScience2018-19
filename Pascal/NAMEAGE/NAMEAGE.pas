{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: Sept 20, 2018

 PURPOSE: Input - Ask the use for:
                (Done) - name (First and Last)
                (Done) - Age (Years)
                (Done) - Gender (Single Char)
                (Done) - favorite color (Word)

          Output:
                 (Done) - NAME is ___ years old.
                 (Done) - NAME's favorite color is ___.
                 (Done) - NAME is (child, teen, adult).

          Note:
               (Done) - Child is up to and 12.
               (Done) - Teen is between 13 and 19.
               (Done) - Adult >20.

          Above And Beyond:
               (Done) - Use age on other planets.
                - Include messgaes about age or color.
                - Ask more questions/responses.

          Personal Notes:
                - Style Words Upon Completion.

                  USE FOR ASKING QUESTIONS
                  textcolor(green);
                  textbackground(black);

                  USE FOR ASKING USER TO CLICK ENTER TWICE
                  textcolor(black);
                  textbackground(white);
}

program nameage;

{Libs}
uses crt;

     var
     firstname : string;
     lastname : string;
     age : integer;
     jupiter_age : real;
     gender : char;
     color : string;

begin {main}
      clrscr;

      {Intro}
      writeln('Hello and welcome!');
      {Output}
      delay(1000);
      textcolor(black);
      textbackground(white);
      writeln('Welcome to the nameage program!');
      {Output}
      delay(1000);
      writeln('This is a program where you, the user, inputs the information, and I will show you what you wrote!');
      {Output}
      delay(1050);
      textbackground(blue);
      textcolor(white);
      writeln('Now let''s start! (Press any button to continue)');
      readkey;
      {RESET SETTINGS OR ELSE}
      textcolor(white);
      textbackground(black);
      clrscr;
      {Output}

      {Ask For First Name}
      textcolor(green);
      writeln('Firstly what''s you''re first name?');
      textcolor(black);
      textbackground(white);
      writeln('Press the enter button twice when you are done :)');
      readln(firstname);
      readkey;

      {Thank User}
      writeln('Thank you ', firstname);
      delay(1000);

      {Ask For Last Name}
      textcolor(green);
      textbackground(black);
      writeln('What''s your lastname ', firstname, '?');
      textcolor(black);
      textbackground(white);
      writeln('Please press the enter button twice when you are done!');
      readln(lastname);
      readkey;

      {Ask For Age}
      textbackground(black);
      textcolor(green);
      writeln('Now, ', firstname, ' ', lastname, ' ', 'what''s your age?');
      textcolor(black);
      textbackground(white);
      readln(age);
      writeln('Thank you, you''re so awesome ', firstname, ' !! :)');

      {Personal Response Depending On Age}
           if (age < 13) then
              begin
                   writeln('That means you''re not even a teen', firstname);
                   readkey;
              end
           else if (age > 13) and (age < 20) then
              begin
                   writeln('Welcome Teen ', firstname, ' !');
                   writeln('Please press any button to continue.');
                   readkey;
              end
           else if (age > 20) then
                begin
                     writeln('Hello Adult ', firstname, ' !');
                     writeln('Please press any button to continue.');
                     readkey;
                end
           else
               begin
                    writeln('That wsa not a valid age.');
                    writeln('Please press any button to continue.');
                    readkey;
               end;

      {Ask Gender}
      textcolor(green);
      textbackground(black);
      writeln('Please type the first gender that you identify as, please?');
      writeln('Write only the first letter please!');
      textcolor(black);
      textbackground(white);
      writeln('Please press enter twice when you are done!');
      readln(gender);
      upcase(gender);
      gender := upcase(gender);
      readkey;

      {Thank User For Typing Gender}
      writeln('Thank you, we''re about to finish up!');

      {Ask For Favorite Color}
      writeln('Last question!');
      delay(500);
      textcolor(green);
      textbackground(black);
      writeln('What is your favorite color?');
      textcolor(black);
      textbackground(white);
      readln(color);
      delay(550);
      textcolor(black);
      textbackground(white);
      writeln('Alright, we''re done! Let''s clear the screen and show you the answers!!');
      writeln('Click any Button to continue!');
      readkey;

      {Clear Screen}
      clrscr;

      {Display Answers}
      writeln('Your full name is ', firstname, ' ', lastname);
      delay(500);
      writeln('You are ', age, ' Years old!');
      delay(500);
      writeln('You identify the first letter of your gender as ', gender);
      delay(500);
      writeln('Finally, your favorite color is ', color);

      {Fun Facts}
      {Age on Jupiter - 12 more than Earth}
      jupiter_age := age / 12;
      writeln('Your age on jupiter is ', jupiter_age);
      delay(450);
      writeln('It takes 12 earth years to Jupiter to orbit.');

      age := age * 365;
      writeln('You are also around ', age, ' old!');

      {End Program}
      delay(400);
      writeln('Thank you for testing out this program');
      writeln('Press any button to exit.');
      readkey;

end. {main}
