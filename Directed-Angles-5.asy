if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="Directed-Angles-5";
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

size(5cm);
pair A = Drawing("A", dir(70), dir(70));
pair B = Drawing("B", dir(330), dir(310));
pair C = Drawing("C", dir(210), dir(210));
draw(A--B--C--cycle);

real r = 0.25;
draw(arc(A, A+r*dir(C-A), A+r*dir(B-A)), EndArrow);
draw(arc(B, B+r*dir(A-B), B+r*dir(C-B)), EndArrow);
draw(arc(C, C+r*dir(B-C), C+r*dir(A-C)), EndArrow);
real k = 0.6;
MP("\measuredangle CAB", k*dir(A), origin);
MP("\measuredangle ABC", k*dir(B), origin);
MP("\measuredangle BCA", 0.9*k*dir(C), origin);
