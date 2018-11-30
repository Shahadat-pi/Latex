if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-30";
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

unitsize(15); defaultpen(linewidth(0.7)); void htick(pair A, pair B,pair ticklength = (0,0.15)){ draw(A--B); draw(A-ticklength--A+ticklength); draw(B-ticklength--B+ticklength); } real a=10,b=3,r=(a+b)/2; pen sm = fontsize(8), dark = linewidth(1); pen colors[] = {rgb(0.9,0.2,0.2) + dark, /* GM */ rgb(0.2,0.9,0.2) + dark, /* AM */ rgb(0.2,0.2,0.9) + dark, /* QM */ rgb(0.2,0.9,0.9) + dark }; /* HM */ pair A = (r-b,(r^2-(r-a)^2)^.5),B=foot((A.x,0),(0,0),A); draw(arc((0,0),r,0,180)--cycle); dot(A); dot((0,r)); dot((A.x,0)); dot((0,0)); draw(B--A,colors[3]); label("HM",(A+B)/2, E, sm+colors[3]); draw((0,0)--(0,r),colors[1]); label("AM",(0,r*2/3), NW, sm+colors[1]); draw((A.x,0)--A,colors[0]); label("GM",(A.x,A.y/2), SE, sm+colors[0]); draw((A.x,0)--(0,r),colors[2]); label("RMS",(A.x/5,r*4/5), NE, sm+colors[2]); draw((-r,0)--A--(r,0), linetype("4 2")); draw((0,0)--B--(A.x,0), linetype("4 2")); draw(rightanglemark((-r,0),A,(r,0))); draw(rightanglemark((0,0),B,(A.x,0))); htick((-r,-1),(A.x,-1)); htick((A.x,-1),(r,-1)); label("$a$",((-r+A.x)/2,-1),S); label("$b$",((r+A.x)/2,-1),S);
