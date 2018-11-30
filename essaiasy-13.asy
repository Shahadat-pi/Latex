if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-13";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
import olympiad;
import graph;
size(100);
draw((0,0)--(69,0)--(69,61)--(0,61)--(0,0));draw((36,0)--(36,36)--(0,36)); draw((36,33)--(69,33));draw((41,33)--(41,61));draw((25,36)--(25,61)); draw((34,36)--(34,45)--(25,45)); draw((36,36)--(36,38)--(34,38)); draw((36,38)--(41,38)); draw((34,45)--(41,45));
