if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_201-2";
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
pair A,B,C,D,X,Z,P; A=(0,0); B=(12,0); C=(8,10); X=(10,5); Z=(6,0); P=(6,3.4); fill(B--X--P--Z--cycle,lightgray); draw(A--B--C--cycle); dot(A); label("$A$",A,SW); dot(B); label("$B$",B,SE); dot(C); label("$C$",C,N); draw(X--P,dashed); draw(Z--P,dashed); dot(X); label("$X$",X,NE); dot(Z); label("$Z$",Z,S); dot(P); label("$P$",P,NW);
