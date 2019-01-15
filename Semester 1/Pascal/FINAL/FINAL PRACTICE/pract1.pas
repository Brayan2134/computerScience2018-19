{
 PURPOSE: - User inputs the side of a square,
          Width/Length of a rectangle.
          - Calc what figure is bigger and by how much.
}
program programname;

uses
 crt;

var
 lenRect: integer;
 widRect: integer;
 rectangle: integer;
 square: integer;
begin

 // Take length of square
 write('Please input the side of the square: ');
 readln(square);

 // Take length of rectangle
 write('Enter length of rectacngle: ');
 readln(lenRect);

 // Take width rectangle
 write('Enter width of rectangle: ');
 readln(widRect);

 // Calculate Area of figs
 square := square * square;
 rectangle := widRect * lenRect;

 // See what fig is bigger
 if (square > rectangle) then
 begin
  square := square - rectangle;
  write('The square is bigger by: ', square, ' units.');
  square := 0;
  rectangle := 0;
 end
 else if (rectangle > square) then
  begin
   rectangle := rectangle - square;
   write('The rectangle is bigger by: ', rectangle, ' units.');
   square := 0;
  rectangle := 0;
  end

 else
 begin
  writeln('Square And Rectangle are BOTH the same.');
  writeln('Difference: ', square - rectangle);
  square := 0;
  rectangle := 0;
 end;

  readkey;
end.
