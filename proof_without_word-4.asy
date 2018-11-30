if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-4";
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

unitsize(15); defaultpen(linewidth(0.7)); int n = 5; pair shiftR = (2*n + 4, 1); real r = 0.35; pen sm = fontsize(10); pen colors(int i){ return rgb(i/n,0.4+i/(2n),1-i/n); } /* shading */ void htick(pair A, pair B,pair ticklength = (0.15,0)){ draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } /* draw plus/minus circle at A */ void plus (pair A) { filldraw(CR(A,r),rgb(0.5,1,0.5)); MP("+",A,(0,0), sm); } void minus (pair A) { filldraw(CR(A,r),rgb(1,0.5,0.5)); MP("-",A,(0,0), sm); } /* triangle 1 */ path p1 = (-1,-1/2) -- (1,-1/2); draw((-n+1-r,-n+1-2*r)--(n-1+r,-n+1-2*r)); for(int i = 0; i < n; ++i) { for(int j = 0; j < 2*i+1; ++j) { if (i % 2 == 0) plus((j-i,-i)); else minus((j-i,-i)); } if (i % 2 != 0) p1 = (-i-1/2,-i-3/2)--(-i-1/2,-i+1/2)--p1--(i+1/2,-i+1/2)--(i+1/2,-i-3/2); plus((2*i - n + 1, -n + 1 - 4*r)); } p1 = p1 -- cycle; draw(p1, rgb(0.85,0.85,0.85)); /* triangle 2 */ n = n+1; path p2 = (-0.1,1/2) -- (0.1,1/2); draw(shiftR+ (-n+1-r,-n+1-2*r)-- shiftR+ (n-1+r,-n+1-2*r)); for(int i = 0; i < n; ++i) { for(int j = 0; j < 2*i+1; ++j) { if (i % 2 != 0) plus(shiftR+ (j-i,-i)); else minus(shiftR+ (j-i,-i)); } if (i % 2 == 0) p2 = (-i-1/2,-i-3/2)--(-i-1/2,-i+1/2)--p2--(i+1/2,-i+1/2)--(i+1/2,-i-3/2); plus(shiftR+ (2*i - n + 1, -n + 1 - 4*r)); } p2 = p2 -- cycle; draw(shift(shiftR)*p2, rgb(0.85,0.85,0.85)); htick(shiftR+(-n,r),shiftR+(-n,-n+1-r)); label("$n$",shiftR+(-n,(-n+1)/2),W,fontsize(10));
