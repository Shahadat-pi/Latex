if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Geo_Intermediate-11";
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

unitsize(20); pair A = MP("A",(-5sqrt(3),0)), B = MP("B",(0,5),N), C = MP("C",(5,0)), M = D(MP("M",0.5(B+C),NE)), D = MP("D",IP(L(A,incenter(A,B,C),0,2),B--C),N), H = MP("H",foot(A,B,C),N), N = MP("N",0.5(H+M),NE), P = MP("P",IP(A--D,L(N,N-(1,1),0,10))); D(A--B--C--cycle); D(B--H--A,blue+dashed); D(A--D); D(P--N); markscalefactor = 0.05; D(rightanglemark(A,H,B)); D(rightanglemark(P,N,D)); MP("10",0.5(A+B)-(-0.1,0.1),NW);
