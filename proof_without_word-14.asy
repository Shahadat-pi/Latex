if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-14";
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

unitsize(15); defaultpen(linewidth(1)); pen sm = fontsize(10); real r = 0.7, h = 4.5, n = 10, xsum = 0; void htick(pair A, pair B, pair ticklength = (0,0.15)){ draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } filldraw(xscale(h)*yscale(h)*unitsquare,rgb(0.9,1,0.9)); draw((0,0)--(h/(1-r),0)--(0,h)); for(int i = 0; i < n; ++i){ xsum += r^i; draw((h*xsum,0)--(h*xsum,h*(1-(1-r)*xsum))); htick((h*(xsum-r^i),-1),(h*xsum,-1)); if(i < 6) label("$r^"+(string) i+"$",(h*(xsum-r^i/2),-1),S,sm); else if(i == 8) label("$\cdots$",(h*(xsum-r^i/2),-1.2),S,sm); } /* htick((-1,0),(-1,h),(.15,0)); htick((0,h+1),(h,h+1)); */ htick((h+1,h),(h+1,h*r),(.15,0)); label("$1$",(0,h/2),W,sm); label("$1$",(h/2,h),N,sm); label("$1-r$",(h+1,h*(1+r)/2),E,sm);
