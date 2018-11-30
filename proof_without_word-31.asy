if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-31";
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

unitsize(15); defaultpen(linewidth(0.7)); real r = 0.3, row1 = 3.5, row2 = 0, row3 = -3.5; void necklace(pair k, pen colors[]){ draw(shift(k)*unitcircle); for(int i = 0; i < colors.length; ++i){ pair p = k+expi(pi/2+2*pi*i/colors.length); fill(Circle(p,r),colors[i]); draw(Circle(p,r)); } } void htick(pair A, pair B,pair ticklength = (0.15,0)){ draw(A--B); draw(A-ticklength--A+ticklength); draw(B-ticklength--B+ticklength); } /* draw necklaces */ pen BEADS1[] = {red,red,red},BEADS2[] = {blue,blue,blue},BEADS3[] = {red,red,blue},BEADS4[] = {blue,red,red},BEADS5[] = {red,blue,red},BEADS6[] = {blue,blue,red},BEADS7[] = {red,blue,blue},BEADS8[] = {blue,red,blue}; necklace((-10,(row2+row3)/2),BEADS1);necklace((-7.5,(row2+row3)/2),BEADS2); necklace((-2.5,row2),BEADS3);necklace((0,row2),BEADS4);necklace((2.5,row2),BEADS5); necklace((-2.5,row3),BEADS6);necklace((0,row3),BEADS7);necklace((2.5,row3),BEADS8); /* box them and label */ draw((-4,row2-1.3)--(4,row2-1.3)--(4,row2+1.6)--(-4,row2+1.6)--cycle,linewidth(0.9)+linetype("4 2")); draw((-4,row3-1.3)--(4,row3-1.3)--(4,row3+1.6)--(-4,row3+1.6)--cycle,linewidth(0.9)+linetype("4 2")); htick((-4,row2+2),(4,row2+2),(0,0.15)); label("$p$",(0,row2+2),N,fontsize(10)); htick((-11.5,(row2+row3)/2+2),(-6,(row2+row3)/2+2),(0,0.15)); label("$a$",(-17.5/2,(row2+row3)/2+2),N,fontsize(10));
