if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="Directed-Angles-1";
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

size(4cm);
draw(unitcircle);
pair A = dir(110);
pair X = dir(210);
pair Y = dir(330);
pair B = dir( 50);
Drawing("A", A, A);
Drawing("B", B, B);
Drawing("X", X, X);
Drawing("Y", Y, Y);
draw(X--A--Y);
draw(X--B--Y);
draw(anglemark(X,A,Y));
draw(anglemark(X,B,Y));
