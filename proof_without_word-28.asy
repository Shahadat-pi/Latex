if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-28";
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

import graph; size(170); defaultpen(linewidth(0.7)); Label k; k.p=fontsize(8); real xmax = 1.35, xmin = -0.35, ymax = 1.35, ymin = -0.35, lblpt = 1/2 + 0.15, alpha = 2, epsilon = 0.015; real f(real x) { return x^alpha; } xaxis(xmin,xmax,Ticks(k, 0.25, NoZero),Arrows(6)); yaxis(ymin,ymax,Ticks(k, 0.25, NoZero),Arrows(6)); filldraw(graph(f,0,1)--(1,0)--(0,0)--cycle,gray(0.7),linewidth(1)); draw(graph(f,1,1.1),linewidth(0.7),EndArrow(4)); draw((lblpt-epsilon,f(lblpt))--(0+epsilon,f(lblpt)),Arrows(4)); draw((lblpt,f(lblpt)-epsilon)--(lblpt,0+epsilon),Arrows(4)); label("$x = y^{1/\alpha}$",(lblpt/2,f(lblpt)),N,fontsize(10)); label("$y = x^{\alpha}$",(lblpt,f(lblpt)/2),E,fontsize(10)); draw((0,1)--(1,1),linewidth(1));
