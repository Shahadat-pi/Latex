if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-24";
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

pathpen = linewidth(1); unitsize(15); pen dotted = linetype("2 4"); path xaxis = (-3,0)--(3,0); pair A = (-2,2), B = (1.5,1.5), B3 = (-1.5,0), B2 = (B.x,-B.y), C2 = IP(xaxis, A--B2); D(xaxis,Arrows(8)); D(D(A)--D(C2)--D(B)); D(D(B2)--C2,dashed+linewidth(0.7)); D(A--D(B3)--B,dotted+linewidth(0.7)); D(B3--B2,dotted); MP("(a,b)",A,W); MP("(c,d)",B,E); MP("(c,-d)",B2,E);
