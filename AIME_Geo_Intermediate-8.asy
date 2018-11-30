if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Geo_Intermediate-8";
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

pointpen = black; pathpen = black+linewidth(0.7); pen d = linewidth(0.7) + linetype("4 4"); pen f = fontsize(8); real r = (-60 + 48 * 3^.5)/23; pair A=(0,0), B=(6,0), D=(1, 24^.5), C=(5,D.y), O = (3,(r^2 + 6*r)^.5); D(MP("A",A)--MP("B",B)--MP("C",C,N)--MP("D",D,N)--cycle); D(CR(A,3));D(CR(B,3));D(CR(C,2));D(CR(D,2));D(CR(O,r)); D(O); D((3,0)--(3,D.y),d); D(A--O--D,d); MP("3",(3/2,0),S,f);MP("2",(2,D.y),N,f);
