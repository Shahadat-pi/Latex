if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="Directed-Angles-9";
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

size(7cm);
pair A = Drawing("A", dir(50), dir(10));
pair B = Drawing("B", dir(170), dir(210));
pair C = Drawing("C", dir(10), dir(10));
draw(A--B--C--cycle, red);
pair M = Drawing("M", midpoint(B--C), 2*dir(-100));
pair H = Drawing("H", orthocenter(A,B,C), dir(orthocenter(A,B,C)-M)*2);

Drawing(circumcircle(B,H,M), blue);
Drawing(circumcircle(C,H,M), blue);
pair OB = circumcenter(B,H,M);
pair OC = circumcenter(C,H,M);
pair P = Drawing("P", 2*foot(OB,B,A)-B, dir(-50));
pair Q = Drawing("Q", 2*foot(OC,C,A)-C, dir(100));
pair R = Drawing("R", 2*foot(OC,P,H)-H, dir(-80));
pair S = Drawing("S", 2*foot(OB,Q,H)-H, dir(130));
draw(P--R); draw(Q--S);
draw(R--S, dotted);

draw(circumcircle(P,Q,A), dashed);
draw(A--Q, red+dotted);
