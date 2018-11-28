{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: October 30, 2018

 PURPOSE: Setup for rest of file.
}

program color;


uses crt, graph;

var
 gd, gm: smallint;
 x, y: integer;

begin {main}

 {Start Graph Session}
 gd := DETECT;
 initgraph(gd, gm, '');

 {Make L???}
 setcolor(blue);
 y := 0;
 for x := 0 to 99999 do
 begin
  line(1, 1, x, 1024);
 end;

 {End Graph Session}
 closegraph;
end. {main}
