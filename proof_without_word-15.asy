if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-15";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import olympiad;
import cse5;
pointpen = black;
pathpen = black;
pathfontpen = black;
anglepen = black;
anglefontpen = black;
pointfontsize = 10;
defaultpen(fontsize(10pt));
size(8cm); // set a reasonable default
usepackage("amsmath");
usepackage("amssymb");
settings.tex="latex";
settings.outformat="pdf";

unitsize(15); defaultpen(linewidth(1)); pen sm = fontsize(10); real r = 0.55, h = 2.5, n = 7, xsum = 0; pair shiftD = -(0,h*r/(1-r)+2.5); void htick(pair A, pair B, pair ticklength = (0,0.15)){ draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } draw((0,h*r/(1-r))--(0,0)--(h*n,0)); for(int i = 1; i < n+1; ++i){ draw((h*i,h*(r/(1-r)-xsum-r^(i)))--(h*i,h*(r/(1-r)-xsum))--(0,h*(r/(1-r)-xsum))); if(i < 4) label("$r^"+(string) i+"$", (0,h*(r/(1-r)-xsum-r^(i)/2)), W, sm); htick((h*i,-1),(h*(i-1),-1)); if(i < n) label("$1$",(h*(i-1/2),-1),S,sm); else if(i == n) label("$\cdots$",(h*(i-1/2),-1.2),S,sm); xsum += r^i; } draw((0,h*r/(1-r))+shiftD--shiftD--(h*n,0)+shiftD); xsum = 0; for(int i = 1; i < n+1; ++i){ draw(shiftD+(h*i,0)--shiftD+(h*i,h*(r/(1-r)-xsum))--shiftD+(h*(i-1),h*(r/(1-r)-xsum))); draw(shiftD+(h*i,h*(r/(1-r)-xsum))--shiftD+(0,h*(r/(1-r)-xsum)),linetype("4 4")+linewidth(0.5)); if(i < 4) label("$r^"+(string) i+"$", shiftD+(h*i,h*(r/(1-r)-xsum-r^(i)/2)), ENE, sm); htick(shiftD+(h*i,-1),shiftD+(h*(i-1),-1)); if(i < n) label("$1$",shiftD+(h*(i-1/2),-1),S,sm); else if(i == n) label("$\cdots$",shiftD+(h*(i-1/2),-1.2),S,sm); xsum += r^i; }
