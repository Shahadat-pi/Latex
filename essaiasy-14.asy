if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-14";
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
defaultpen(fontsize(8)); size(170); pair A=(15,32), B=(12,19), C=(23,20), M=B/2+C/2, P=(17,22); draw(A--B--C--A);draw(A--M);draw(B--P--C); label("A (p,q)",A,(1,1));label("B (12,19)",B,(-1,-1));label("C (23,20)",C,(1,-1));label("M",M,(0.2,-1)); label("(17,22)",P,(1,1)); dot(A^^B^^C^^M^^P);
