if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-16";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
import olympiad;
import graph;
unitsize(0.2 cm); pair A, B, C, D, E, F; A = (0,13); B = (13,13); C = (13,0); D = (0,0); E = A + (12*12/13,5*12/13); F = D + (5*5/13,-5*12/13); draw(A--B--C--D--cycle); draw(A--E--B); draw(C--F--D); dot("$A$", A, W); dot("$B$", B, dir(0)); dot("$C$", C, dir(0)); dot("$D$", D, W); dot("$E$", E, N); dot("$F$", F, S);
