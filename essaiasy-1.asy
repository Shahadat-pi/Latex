if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(100); defaultpen(linewidth(0.6)+fontsize(11)); real r=10; pair O=(0,0),A=r*dir(45),B=(A.x,A.y-r),C; path P=circle(O,r); C=intersectionpoint(B--(B.x+r,B.y),P); draw(P); draw(C--B--O--A--B); dot(O); dot(A); dot(B); dot(C); label("$O$",O,SW); label("$A$",A,NE); label("$B$",B,S); label("$C$",C,SE);
