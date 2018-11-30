if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="Directed-Angles-3";
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

size(5cm);
pair L = dir(80);
pair LL = -L;
pair M = dir(130);
pair MM = -M;
draw(L--LL);
draw(M--MM);
MP("\ell", L, L);
MP("m", M, M);
draw(arc(origin,0.4*L,0.4*M), EndArrow);
MP("50^{\circ}", 0.6*dir(105), origin);
