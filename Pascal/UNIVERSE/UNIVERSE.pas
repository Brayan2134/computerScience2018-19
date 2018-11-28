{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: November 1, 2018

 PURPOSE: Setup for rest of file.
}

program universe;

{Libs}
uses crt, graph;

 procedure Intro;
  var
    gd, gm: smallint;
    x, y: integer;

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
 readkey;

 {End graph session}
 closegraph;
   end;

{******************************************************************************}

begin {main}

 intro;

end. {main}
