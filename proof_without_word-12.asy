if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-12";
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

defaultpen(linewidth(0.7)); unitsize(15); int n = 10; real h = 6; pen colors[] = {rgb(0.9,0,0),rgb(0,0.9,0),rgb(0,0,0.9)}; pair shiftR = (h+3,0); void drawEquilaterals(pair A, real s){ filldraw(A--A+s*expi(2*pi/3)--A+(-s,0)--cycle,colors[0]); filldraw(A--A+s*expi(2*pi/3)--A+s*expi(1*pi/3)--cycle,colors[1]); filldraw(A--A+s*expi(1*pi/3)--A+(s,0)--cycle,colors[2]); } for(int i = 0; i < n; ++i) drawEquilaterals(shiftR + (0,h-h/(2^i) ), (h/(2^(i+1))) *2/3^.5); drawEquilaterals((0,0), h/3^.5); draw((-h/3^.5,0)--(h/3^.5,0)--(0,h)--cycle); label("$\vdots$",(0,3/4*h));
