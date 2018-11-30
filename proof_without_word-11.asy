if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-11";
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

defaultpen(linewidth(0.7)); unitsize(15); int n = 4; real h = 2; pen colors[] = {rgb(0.8,0,0),rgb(0,0.8,0)}; void drawTriGrid(real s){ for(int i = 0; i < 4; ++i){ draw( (-s*3/2,s*(3/2 - i)) -- (s*3/2,s*(3/2 - i)), linetype("2 2")); draw( (s*(3/2 - i),-s*3/2) -- (s*(3/2 - i),s*3/2), linetype("2 2")); } } void fillrect(pair A, pair B, pen p){ filldraw(A--(A.x,B.y)--B--(B.x,A.y)--cycle, p, linewidth(1)); } for(int i = 0; i < n; ++i) { fillrect( ((-1)^i*-h/3^i*(3/2),-h/3^i*(3/2)) , ((-1)^i*-h/3^i*(1/2),h/3^i*(3/2)) , colors[0]); fillrect(-((-1)^i*-h/3^i*(3/2),-h/3^i*(3/2)) ,-((-1)^i*-h/3^i*(1/2),h/3^i*(3/2)) , colors[1]); fillrect( (-h/3^i*(1/2),(-1)^i*h/3^i*(1/2)) , (h/3^i*(1/2),(-1)^i*h/3^i*(3/2)), colors[0]); fillrect(-(-h/3^i*(1/2),(-1)^i*h/3^i*(1/2)) ,-(h/3^i*(1/2),(-1)^i*h/3^i*(3/2)), colors[1]); drawTriGrid(h/3^i); }
