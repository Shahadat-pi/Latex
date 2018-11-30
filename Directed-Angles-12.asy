if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="Directed-Angles-12";
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
pair A = Drawing("A", dir(110), dir(110));
pair B = Drawing("B", dir(210), dir(210));
pair C = Drawing("C", dir(330), dir(330));
pair D = Drawing("D", foot(A,B,C), dir(-90));
pair E = Drawing("E", (A+C)/2, dir(40));
pair F = Drawing("F", 0.7*A+0.3*B, dir(160));
draw(circumcircle(A,E,F), dotted);
draw(circumcircle(B,F,D), dotted);
draw(circumcircle(C,D,E), dotted);
draw(A--B--C--cycle);
