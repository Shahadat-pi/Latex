if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Geo_Intermediate-14";
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

pointpen = black; pathpen = linewidth(0.7); pair A = (0,0), C= (11,0), B=IP(CR(A,20),CR(C,18)), D = IP(B--C,CR(B,20/31*abs(B-C))), M = (A+D)/2, P = IP(M--2*M-B, A--C), D2 = IP(D--D+P-B, A--C); D(MP("A",D(A))--MP("B",D(B),N)--MP("C",D(C))--cycle); D(A--MP("D",D(D),NE)--MP("D'",D(D2))); D(B--MP("P",D(P))); D(MP("M",M,NW)); MP("20",(B+D)/2,ENE); MP("11",(C+D)/2,ENE);
