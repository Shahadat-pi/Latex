if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-8";
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

// To change the value of n shown, edit the line "int n = 5;" to whichever desired value of n. // To edit the size of the diagram, change the line unitsize(15); to the desired size. unitsize(15); defaultpen(linewidth(0.7)); int n = 5; // nth pentagonal number real r = 0.2; // dot radius pen p0 = red, p1 = rgb(1,1,0.5), p2 = rgb(0.5,1,0.5), p3 = rgb(0.5,0.5,1); // dot color // return the coordinate of the ith point of a regular pentagon with radius s // 0 <= i <= 4, and pentagonalPt(0,s) = (0,0) pair pentagonalPt(int i, real s) { return s * (dir(i*72+216+18) - dir(216+18)); } // draw triangles filldraw(pentagonalPt(4,1)--pentagonalPt(4,n-1)--pentagonalPt(3,n-1)+(pentagonalPt(4,n-1)-pentagonalPt(3,n-1))/(n-1)--cycle, p1, linewidth(1)); filldraw(pentagonalPt(3,1)--pentagonalPt(3,n-1)--pentagonalPt(2,n-1)+(pentagonalPt(3,n-1)-pentagonalPt(2,n-1))/(n-1)--cycle, p2, linewidth(1)); filldraw(pentagonalPt(2,1)--pentagonalPt(2,n-1)--pentagonalPt(1,n-1)+(pentagonalPt(2,n-1)-pentagonalPt(1,n-1))/(n-1)--cycle, p3, linewidth(1)); draw(pentagonalPt(1, n-1)--(0,0)--pentagonalPt(4, n-1)); for(int i = 1; i < n; ++i) { for(int k = 2; k <= 4; ++k) { draw(pentagonalPt(k, i) -- pentagonalPt(k-1, i), linetype("2 2")); for(int j = 0; j <= i; ++j) { filldraw(circle(pentagonalPt(k, i) + j*(pentagonalPt(k-1, i)-pentagonalPt(k, i))/i, r), p0); } } } filldraw(circle((0,0),r), p0);
