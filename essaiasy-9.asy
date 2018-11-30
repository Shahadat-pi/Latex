if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-9";
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
pointpen=black;pathpen=black+linewidth(0.7);pen f = fontsize(10); pair P=(-8,5),Q=(-15,-19),R=(1,-7),S=(7,-15),T=(-4,-17); MP("P",P,N,f);MP("Q",Q,W,f);MP("R",R,E,f); D(P--Q--R--cycle);D(P--T,EndArrow(2mm)); D((-17,0)--(4,0),Arrows(2mm));D((0,-21)--(0,7),Arrows(2mm));
