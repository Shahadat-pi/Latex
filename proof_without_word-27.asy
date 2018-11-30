if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-27";
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

import graph; size(220); defaultpen(linewidth(0.7)); Label k; k.p=fontsize(10); real xmax = pi/2+0.5, xmin = -0.5, ymax = 1.39, ymin = -0.39, lblpt = pi/4 + 0.08; /* f(x) = sin^2(x) */ real f(real x) { return sin(x) * sin(x); } string pilabel(real x) { if(x > 1) return "$\pi/2$"; else if(x > 0) return "$\pi/4$"; else return "";} xaxis(xmin,xmax,Ticks(k, pilabel, pi/4),Arrows(6)); yaxis(ymin,ymax,Ticks(k, NoZero),Arrows(6)); filldraw(graph(f,0,pi/2)--(pi/2,0)--(0,0)--cycle,gray(0.7),linewidth(1)); draw((lblpt,f(lblpt))--(lblpt,1),Arrows(6)); draw((lblpt,f(lblpt))--(lblpt,0),Arrows(6)); label("$\cos^2(x)$",(lblpt,f(lblpt)/2+1/2),W,fontsize(10)); label("$\sin^2(x)$",(lblpt,f(lblpt)/2),E,fontsize(10)); draw((0,1)--(pi/2,1),linewidth(1));
