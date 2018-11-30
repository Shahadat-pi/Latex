if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_201-3";
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

size(7cm);
draw((0,0)--(12,0)--(8,10)--(0,0)); draw((6,0)--(6,3.4)--(10,5)); draw((6,3.4)--(4,5)); label("$A$", (0,0), SW); label("$B$", (12,0), SE); label("$C$", (8, 10), N); label("$P$", (6, 3.4), NNE); label("$R$", (10, 5), NE); label("$S$", (6, 0), S); label("$T$", (4, 5), NW);
