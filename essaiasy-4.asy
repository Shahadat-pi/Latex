if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
import olympiad;
size(160); defaultpen(linewidth(.8pt)+fontsize(11pt)); dotfactor=3; pair O1=(0,0), O2=(12,0); path C1=Circle(O1,8), C2=Circle(O2,6); pair P=intersectionpoints(C1,C2)[0]; path C3=Circle(P,sqrt(130)); pair Q=intersectionpoints(C3,C1)[0]; pair R=intersectionpoints(C3,C2)[1]; draw(C1); draw(C2); draw(O2--O1); dot(O1); dot(O2); draw(Q--R); label("$Q$",Q,NW); label("$P$",P,1.5*dir(80)); label("$R$",R,NE); label("12",waypoint(O1--O2,0.4),S);
