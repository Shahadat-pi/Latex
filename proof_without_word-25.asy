if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-25";
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

defaultpen(linewidth(1)); unitsize(15); pen dotted = linetype("2 4"), sm = fontsize(10); real r = 2; pair A = r*(0,0), B = (r*18/5,A.y), C = r*(16/5,12/5), D = (r*9/5,C.y); pair refl(pair a, pair b = (C+B)/2) { return a+2*(b-a); } void makeshiftarrow(pair a, real dir, real arrowlength = r){ /* Arrow option resizes */ fill(a--a+arrowlength*expi(dir+pi/8)--a+arrowlength*expi(dir-pi/8)--cycle); } draw(A--B--C--D--cycle); draw(A--C^^B--D); draw(refl(A)--C--B--refl(D)--cycle ^^ C--refl(D), dotted); draw(rightanglemark(A,C,refl(D),15)^^rightanglemark(A,IP(A--C,B--D),B,15), linewidth(0.7)); label("$A$",A,S,sm);label("$B$",B,S,sm);label("$C$",C,N,sm);label("$D$",D,N,sm);label("$A'$",refl(A),N,sm);label("$D'$",refl(D),S,sm); /* arrow */ draw(arc((B+C)/2,C.y,240,300),linewidth(0.7)); makeshiftarrow((B+C)/2+C.y*expi(pi*300/180),210*pi/180,r/4);
