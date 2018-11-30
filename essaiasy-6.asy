if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-6";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
import olympiad;
size(200); pathpen=black;pointpen=black; pair A=(0,0),B=(12,0),C=(4,5); D(A--B--C--cycle); D(A+(B-A)*3/4--A+(C-A)*3/4); D(B+(C-B)*5/6--B+(A-B)*5/6);D(C+(B-C)*5/12--C+(A-C)*5/12); MP("A",C,N);MP("B",A,SW);MP("C",B,SE); /* sorry mixed up points according to resources diagram. */ MP("t_3",(A+B+(B-A)*3/4+(A-B)*5/6)/2+(-1,0.8),N); MP("t_2",(B+C+(B-C)*5/12+(C-B)*5/6)/2+(-0.3,0.1),WSW); MP("t_1",(A+C+(C-A)*3/4+(A-C)*5/12)/2+(0,0.15),ESE);
