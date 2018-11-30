if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-1";
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

unitsize(15); defaultpen(linewidth(0.7)); int n = 6; pair shiftR = ((n+2),0); real r = 0.3; pen colors(int i){ return rgb(i/n,0.4+i/(2n),1-i/n); } /* shading */ void htick(pair A, pair B,pair ticklength = (0.15,0)){ draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } /* triangle */ draw((-r,0)--(-r,-n+1)^^(r,-n+1)--(r,0),linetype("4 4")); for(int i = 0; i < n; ++i) draw((-i,-i)--(i,-i)); for(int i = 0; i < n; ++i) for(int j = 0; j < 2*i+1; ++j) filldraw(CR((j-i,-i),r),colors(i)); /* square */ draw(r*expi(pi/4)+shiftR--(n-1,-n+1)+r*expi(pi/4)+shiftR^^r*expi(5*pi/4)+shiftR--r*expi(5*pi/4)+(n-1,-n+1)+shiftR,linetype("4 4")); for(int i = 0; i < n; ++i) draw(shiftR+(0,-i)--shiftR+(i,-i)--shiftR+(i,0)); for(int i = 0; i < n; ++i) for(int j = 0; j < n; ++j) filldraw(CR((j,-i)+shiftR,r),colors((i>j)?i:j)); htick(shiftR+(-1,r),shiftR+(-1,-n+1-r)); label("$n$",shiftR+(-1,(-n+1)/2),W,fontsize(10));
