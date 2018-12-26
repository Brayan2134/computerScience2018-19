{
 NAME: Brayan Quevedo Ramos
 CLASS: Computer Science 1
 DATE: 12/26/18

 PURPOSE: This program is in addition to the last one I did,
          where it still has the same basic concept;
          the user can add as many family members as he or she wants into an array,
          and from that read the family members.
}

program Family;

uses
 crt;

 type
  person = record
   fname, lname: string;
   gender: char;
  end;

  // Outro
  procedure outro;
  begin
   writeln;
   writeln('Thank you for using this program!');
   writeln;
   textbackground(red);
    writeln('Please press any button to exit.');
   textbackground(black);
   writeln;
  end;
{******************************************************************************}
var
 employee: array[1..3] of person; // Array to hold data
 x : integer; // Variable For (Display Data) Section

begin

 // CHANGE LATER
 {Load Data Into Array}
 employee[1].fname := 'Joe';
 employee[1].lname := 'Smith';
 employee[1].gender := 'M';

 writeln;

 employee[2].fname := 'Will';
 employee[2].lname := 'Smith';
 employee[2].gender := 'M';

 writeln;

 employee[3].fname := 'Lucy';
 employee[3].lname := 'Letic';
 employee[3].gender := 'F';
 {End Load Data Into Array}

 {Display Data}
 for x := 1 to 3 do
 begin
  writeln('Name: ', employee[x].fname, ' ', employee[x].lname);
  writeln('Gender: ', employee[x].gender);
  writeln;
 end;
 {End Dsplay Data}

 outro;
 readkey;
end.
