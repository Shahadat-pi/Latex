if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_2017 II-5";
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

draw(Circle((0,0),125)); draw(Circle((25,0),100)); draw(Circle((25,20),80)); draw(Circle((9,20),64)); dot((125,0)); label("$A_0$",(125,0),E); dot((25,100)); label("$A_1$",(25,100),SE); dot((-55,20)); label("$A_2$",(-55,20),E);
