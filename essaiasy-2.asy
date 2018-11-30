if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
size(120); import three; pathpen = black+linewidth(0.65); pointpen = black; currentprojection = perspective(30,-20,10); real s = 6 * 2^.5; triple A=(0,0,0),B=(s,0,0),C=(s,s,0),D=(0,s,0),E=(-s/2,s/2,6),F=(3*s/2,s/2,6); draw(A--B--C--D--A--E--D); draw(B--F--C); draw(E--F); label("A",A,W); label("B",B,S); label("C",C,SE); label("D",D,NE); label("E",E,N); label("F",F,N);
