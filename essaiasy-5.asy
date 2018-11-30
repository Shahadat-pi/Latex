if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-5";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
import olympiad;
size(100); defaultpen(linewidth(.8pt)+fontsize(11pt)); dotfactor=1; pair O1=(0,0); pair A=(-0.91,-0.41); pair B=(-0.99,0.13); pair C=(0.688,0.728); pair D=(-0.25,0.97); path C1=Circle(O1,1); draw(C1); label("$A$",A,W); label("$B$",B,W); label("$C$",C,NE); label("$D$",D,N); draw(A--D); draw(B--C); pair F=intersectionpoint(A--D,B--C); add(pathticks(A--F,1,0.5,0,3.5)); add(pathticks(F--D,1,0.5,0,3.5));
