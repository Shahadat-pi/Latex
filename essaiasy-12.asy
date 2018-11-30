if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-12";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
import olympiad;
import graph;
size(3.5cm); real lsf=0.5; pen dps=linewidth(0.7)+fontsize(10); defaultpen(dps); pen ds=black; real xmin=-1.55,xmax=7.95,ymin=-4.41,ymax=5.3; draw((1,3)--(0,0)); draw((0,0)--(2,0)); draw((2,0)--(1,3)); draw((1,3)--(1,0)); draw((1,0.7)--(0,0)); draw((1,0.7)--(2,0)); label("$11$",(1,1.63),W); dot((1,3),ds); label("$A$",(1,3),N); dot((0,0),ds); label("$B$",(0,0),SW); dot((2,0),ds); label("$C$",(2,0),SE); dot((1,0),ds); label("$M$",(1,0),S); dot((1,0.7),ds); label("$D$",(1,0.7),NE); clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
