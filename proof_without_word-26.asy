if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-26";
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

// feel free to change these four points! pair A = (0,0), B = (3, -2), C = (5,1), D = (1,3); // // Rest of code // size(200); defaultpen(linewidth(0.9)); pen lightgreen = rgb(0.6,1,0.6), lightred = rgb(1,0.6,0.6), smdash = linewidth(0.7)+linetype("2 2"); pair E = IP(A--C,B--D), AB = (A+B)/2, BC = (B+C)/2, CD = (C+D)/2, DA = (D+A)/2, ABE = 2*AB-E, BCE = 2*BC-E, CDE = 2*CD-E, DAE = 2*DA-E; path midpts = AB--BC--CD--DA--cycle; filldraw(shift(-E)*scale(2)*midpts,lightgreen); filldraw(midpts,lightred); draw(A--B--C--D--cycle); draw(A--C); draw(B--D); draw((A+ABE)/2--(C+BCE)/2,smdash); draw((B+ABE)/2--(D+DAE)/2,smdash); draw((B+BCE)/2--(D+CDE)/2,smdash); draw((A+DAE)/2--(C+CDE)/2,smdash); dot(A); dot(B); dot(C); dot(D); label("$A$",A,W);label("$B$",B,S);label("$C$",C,E);label("$D$",D,N);
