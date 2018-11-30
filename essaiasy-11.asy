if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-11";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
import olympiad;
import graph;
size(150);
pointpen = black; pathpen = black + linewidth(0.7); size(150); pair A=(0,0), B=(6,0), C=(-3,0), D=C+6*expi(acos(1/3)), F=B+3*expi(acos(1/3)), P=IP(F--F+3*(D-F),CR(A,9)), Q=IP(F--F+3*(F-D),CR(A,9)); D(CR(A,9)); D(CR(B,3)); D(CR(C,6)); D(P--Q);
