if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-3";
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

unitsize(15); defaultpen(linewidth(0.7)); int n = 6; real r = 0.35, h = 3/4; /* radius size and horizontal spacing */ pair shiftR = (h*(n+1)+r, 0); pen colors(int i){ /* shading */ if(i == n) return red; return rgb(5/n,0.4+5/(2n),1-5/n); } void htick(pair A, pair B, pair ticklength = (0.15,0)){ draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } void makeshiftarrow(pair A, real dir, real arrowlength = r){ /* Arrow option resizes */ fill(A--A+arrowlength*expi(dir+pi/8)--A+arrowlength*expi(dir-pi/8)--cycle); } pair getCenter(int i, int j){ return ((2*j-i)*h,-i);} /* triangle */ for(int i = 0; i < n+1; ++i){ draw((-i*h,-i)--(i*h,-i)); /* horizontal lining */ for(int j = 0; j <= i; ++j) filldraw(circle(getCenter(i,j),r), colors(i)); } /* fill in circle in row 4, column 3 */ filldraw(circle(getCenter(3,2),r),blue); draw(getCenter(n,2)-- getCenter(3,2)-- getCenter(n,n+2-3)); makeshiftarrow(getCenter(n,2),pi/4,0.5); makeshiftarrow(getCenter(n,n+2-3),3*pi/4,0.5); htick(shiftR+(-1,r),shiftR+(-1,-n+1-r)); label("$n$",shiftR+(-1,(-n+1)/2),E,fontsize(10));
