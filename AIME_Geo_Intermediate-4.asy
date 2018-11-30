if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Geo_Intermediate-4";
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

defaultpen(0.8pt+fontsize(12pt)); pair A,B,C,D,E,F; pair G,H,I,J,K,L; A=dir(0); B=dir(60); C=dir(120); D=dir(180); E=dir(240); F=dir(300); draw(A--B--C--D--E--F--cycle,blue); G=(A+B)/2; H=(B+C)/2; I=(C+D)/2; J=(D+E)/2; K=(E+F)/2; L=(F+A)/2; int i; for (i=0; i<6; i+=1) { draw(rotate(60*i)*(A--H),dotted); } pair M,N,O,P,Q,R; M=extension(A,H,B,I); N=extension(B,I,C,J); O=extension(C,J,D,K); P=extension(D,K,E,L); Q=extension(E,L,F,G); R=extension(F,G,A,H); draw(M--N--O--P--Q--R--cycle,red); label('$A$',A,(1,0)); label('$B$',B,NE); label('$C$',C,NW); label('$D$',D, W); label('$E$',E,SW); label('$F$',F,SE); label('$G$',G,NE); label('$H$',H, (0,1)); label('$I$',I,NW); label('$J$',J,SW); label('$K$',K, S); label('$L$',L,SE); label('$M$',M); label('$N$',N); label('$O$',(0,0),NE); dot((0,0));
