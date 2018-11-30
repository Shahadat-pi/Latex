if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-8";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
import olympiad;
size(200);
pointpen=black; pathpen=black+linewidth(0.7); pair A=(0,0),B=(10,0),C=6*expi(pi/3); D(B--A); D(A--C,EndArrow); MP("A",A,SW);MP("B",B,SE);MP("60^{\circ}",A+(0.3,0),NE);MP("100",(A+B)/2);
