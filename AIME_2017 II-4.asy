if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_2017 II-4";
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

pair A,B,C,D,M,n,O,P; A=(0,42);B=(84,42);C=(84,0);D=(0,0);M=(0,21);n=(28,42);O=(12,18);P=(32,13); fill(C--D--P--cycle,lightgray); draw(A--B--C--D--cycle); draw(C--M); draw(D--n); draw(B--P); draw(D--P); label("$A$",A,NW); label("$B$",B,NE); label("$C$",C,SE); label("$D$",D,SW); label("$M$",M,W); label("$N$",n,N); label("$O$",O,(-0.5,1)); label("$P$",P,N); dot(A); dot(B); dot(C); dot(D); dot(M); dot(n); dot(O); dot(P); label("28",(0,42)--(28,42),N); label("56",(28,42)--(84,42),N);
