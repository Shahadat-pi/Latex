if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-17";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
import olympiad;
import graph;
size(120); pathpen=black; real s=sqrt(17); real r=(sqrt(51)+s)/sqrt(2); D((0,2*s)--(0,0)--(2*s,0)); D((0,s)--r*dir(45)--(s,0)); D((0,0)--r*dir(45)); D((r*dir(45).x,2*s)--r*dir(45)--(2*s,r*dir(45).y)); MP("30^\circ",r*dir(45)-(0.25,1),SW); MP("30^\circ",r*dir(45)-(1,0.5),SW); MP("\sqrt{17}",(0,s/2),W); MP("\sqrt{17}",(s/2,0),S); MP("\mathrm{cut}",((0,s)+r*dir(45))/2,N); MP("\mathrm{cut}",((s,0)+r*dir(45))/2,E); MP("\mathrm{fold}",(r*dir(45).x,s+r/2*dir(45).y),E); MP("\mathrm{fold}",(s+r/2*dir(45).x,r*dir(45).y));
