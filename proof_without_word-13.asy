if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-13";
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

defaultpen(linewidth(1)); unitsize(15); int n = 8; /* number of layers */ real h = 3; /* square height */ pen colors[] = {rgb(0.8,0,0),rgb(0,0.8,0),rgb(0,0,0.8)}; pair shiftL = (-3*h,0); /* amount to shift second square left by */ void drawSquares(real s, pair A = (0,0)){ filldraw(shift(A)*shift(-2*s, -s)*xscale(s)*yscale(s)*unitsquare,colors[0]); filldraw(shift(A)*shift(-2*s,-2*s)*xscale(s)*yscale(s)*unitsquare,colors[1]); filldraw(shift(A)*shift(-s ,-2*s)*xscale(s)*yscale(s)*unitsquare,colors[2]); } for(int i = 0; i < n; ++i) drawSquares(h/2^i); drawSquares(h,shiftL); draw(shift(shiftL+(-2*h,-2*h))*xscale(2*h)*yscale(2*h)*unitsquare); label("$\cdots$",shiftL+(-h/2,-h/2));
