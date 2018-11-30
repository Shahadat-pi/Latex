if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-2";
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

defaultpen(linewidth(0.7)); unitsize(15); int n = 6; pair shiftR = ((n+2),0); real r = 0.3; pen colors(int i){ return rgb(0.4+i/(2n),i/n,1-i/n); } /* shading */ void htick(pair A, pair B,pair ticklength = (0.15,0)){ draw(A--B); draw(A-ticklength--A+ticklength); draw(B-ticklength--B+ticklength); } /* triangle */ draw((0.5,0)--(n-0.5,-n+1),linetype("4 4")); for(int i = 0; i < n; ++i) draw((0,-i)--(i,-i)); for(int i = 0; i < n; ++i) for(int j = 0; j <= i; ++j) filldraw(CR((j,-i),r),colors(i)); /* arc arrow */ draw( arc((n,-n+1)/2, (1.5,-1.5), (n-1.5,-1.5), CW) ); fill((n-1.5,-1.5) -- (n-1.5,-1.5)+r*expi(5.2*pi/6) -- (n-1.5,-1.5)+r*expi(3.3*pi/6) -- cycle); /* manual arrowhead? avoid resizing */ /* square */ draw(shiftR+(0.5,0)--shiftR+(n-0.5,-n+1),linetype("4 4")); for(int i = 0; i < n; ++i) draw(shiftR+(0,-i)--shiftR+(i,-i)^^shiftR+(n,-n+1)-(0,-i)--shiftR+(n,-n+1)-(i,-i)); for(int i = 0; i < n; ++i) for(int j = 0; j < n+1; ++j) filldraw(CR((j,-i)+shiftR,r),colors((j <= i) ? i : n-1-i)); /* labeling and ticks */ htick(shiftR+(-1,r),shiftR+(-1,-n+1-r)); label("$n$",shiftR+(-1,(-n+1)/2),W,fontsize(10)); htick(shiftR+(-r,-n),shiftR+(n+r-1,-n),(0,0.15)); label("$n$",shiftR+((n-1)/2,-n),S,fontsize(10)); htick(shiftR+(n-r,-n),shiftR+(n+r,-n),(0,0.15)); label("$1$",shiftR+(n,-n),S,fontsize(10));
