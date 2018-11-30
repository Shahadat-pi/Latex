if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
size(120);
pointpen=black; pathpen=black+linewidth(0.65); pair O=(0,0),A=(-65/2,0),B=(65/2,0); pair H=(-((65/2)^2-28^2)^.5,0),C=(H.x,28),D=(H.x,-28); D(CP(O,A));D(MP("A",A,W)--MP("B",B,E));D(MP("C",C,N)--MP("D",D)); dot(MP("H",H,SE));dot(MP("O",O,SE));
