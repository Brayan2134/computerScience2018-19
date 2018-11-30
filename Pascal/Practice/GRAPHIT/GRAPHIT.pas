{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: October 25, 2018

 PURPOSE: Learn how to use pascal in graphics.
}

program graphit;

{Step #1: Include graph Lib}
uses crt, graph;

  {getInt -Make sure user types an Integer}
   Procedure getInt(ask:string; var num:integer);
    var
     numStr : string;
     code : integer;

    begin
     repeat
      write(ask);
      readln(numstr);
      val(numStr, num, code);
      if code <> 0 then
       begin
        writeln('Not an integer ');
        writeln('Press any key to try again.');
        readkey;
        clrscr;
       end;
      until (code = 0);
     end;
    {End getInt - Make sure user types an Integer}

{******************************************************************************}
 var {main}
  {Step #2: Add REQUIRED vars }
  gd, gm: smallint;
  x, y: integer;

begin {main}
 {Step #3: Needed Code (To Start Graphics)}
 gd := DETECT;
 initgraph(gd, gm, '');

 {The Code For Graphics}
 setcolor(yellow);
 line(1, 640, 1024, 1);

 {*****************MAJOR KEY: USE PAPER TO DRAW OUT***************************}

 {Loop For Right Triangle}
 setcolor(green);
 for y:= 1 to 640 do
  begin
   line(1, 640, 1024, y);
  end;

 {Sweep Left From Right Triangle}
 setcolor(red);
 for x := 1024 downto 1 do
  begin
   line(1, 640, x, 1);
  end;

 {Cicle}
 setcolor(blue);
 circle(512, 320, 200);
 {Fill Circle}
 delay(500);
 setfillstyle(solidfill, black);
 floodfill(512, 320, blue);

 {Display Text}
 delay(500);
 setcolor(yellow);
 settextstyle(defaultfont, horizdir, 8);
 outtextxy(350, 300, 'QUEEN');

 {bar3D}
 setcolor(blue);
 readkey;

 {Step #4: Close Graph Session}
 closegraph;
end. {main}
