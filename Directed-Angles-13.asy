if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="Directed-Angles-13";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import olympiad;
import cse5;
pointpen = black;
pathpen = black;
pathfontpen = black;
anglepen = black;
anglefontpen = black;
pointfontsize = 10;
defaultpen(fontsize(10pt));
size(8cm); // set a reasonable default
usepackage("amsmath");
usepackage("amssymb");
settings.tex="latex";
settings.outformat="pdf";

size(3.5cm);
pair Y = Drawing("Y", origin, dir(225));
pair A = Drawing("A", dir(130), dir(130));
pair B = Drawing("B", 1.3*dir(70), dir(110));
pair r = 1.7*dir(-40);
pair C = Drawing("C", A*r, dir(A*r));
pair D = Drawing("D", B*r, dir(B*r));
pair X = Drawing("X", extension(A,B,C,D), dir(50));
draw(A--X);
draw(C--D);
draw(circumcircle(A,X,Y));
draw(circumcircle(B,X,Y));
draw(A--Y--B, dashed);
draw(C--Y--D, dashed);
