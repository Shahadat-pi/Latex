if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="Directed-Angles-6";
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

pair X = 0.7*dir(110);
Drawing("X", X, dir(X));
pair A = Drawing("A", 0.8*dir(20), dir(-X));
pair B = Drawing("B", -0.2*dir(20), dir(-X));
pair C = Drawing("C", 0.3*dir(20), dir(-X));
draw(dir(A)--dir(-A), Arrows);
draw(X--B);
