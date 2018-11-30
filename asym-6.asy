if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="asym-6";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.render=0;
import graph3;
size(200,0);
currentprojection=perspective(10,8,4);
real f(pair z) {return 0.5+exp(-abs(z)^2);}
draw((-1,-1,0)--(1,-1,0)--(1,1,0)--(-1,1,0)--cycle);
draw(arc(0.12Z,0.2,90,60,90,25),ArcArrow3);
surface s=surface(f,(-1,-1),(1,1),nx=5,Spline);
xaxis3(Label("$x$"),red,Arrow3);
yaxis3(Label("$y$"),red,Arrow3);
zaxis3(XYZero(extend=true),red,Arrow3);
draw(s,lightgray,meshpen=black+thick(),nolight,render(merge=true));
label("$O$",O,-Z+Y,red);
