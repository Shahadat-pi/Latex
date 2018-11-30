if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-18";
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

defaultpen(linewidth(0.7)); unitsize(15); pen sm = fontsize(10); real a = 3/1.2, b = 4/1.2, c = (a^2 + b^2)^.5, rot1 = acos(a/c); pair shiftR = (a+b+c,0); path top = (0,c)--a*expi(rot1)+(0,c)--(c,c), sq1=rotate(rot1*180/pi)*xscale(a)*yscale(a)*unitsquare, sq2=shift(c,0)*rotate(rot1*180/pi)*xscale(b)*yscale(b)*unitsquare, tri = (0,0)--(0,a)--(b,0)--cycle; void htick(pair A, pair B, pair ticklength = (0.15,0)){ draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } { /* first picture */ filldraw(xscale(a+b)*yscale(a+b)*unitsquare, rgb(1,0.85,0.75)); filldraw(tri, rgb(0.6,0.9,0.6)); filldraw(shift((a+b,0))*rotate(90)*tri, rgb(0.6,0.9,0.6)); filldraw(shift((a+b,a+b))*rotate(180)*tri, rgb(0.6,0.9,0.6)); filldraw(shift((0,a+b))*rotate(270)*tri, rgb(0.6,0.9,0.6)); draw((0,a)--(a+b,b), linetype("2 4")+linewidth(0.7)); label("$a$",(0,a/2),W,sm); label("$b$",(b/2,0),S,sm); label("$c$",(b/2,a/2),NE,sm); } { /* second picture */ filldraw(shift(shiftR)*xscale(a+b)*yscale(a+b)*unitsquare, rgb(1,0.85,0.75)); filldraw(shift(shiftR+(a,a) )*rotate(270)*reflect((0,0),(1,1))*tri, rgb(0.6,0.9,0.6)); filldraw(shift(shiftR+(a+b,0))*rotate(90)*reflect((0,0),(1,1))*tri, rgb(0.6,0.9,0.6)); filldraw(shift(shiftR+(a,a) )*rotate(90)*tri, rgb(0.6,0.9,0.6)); filldraw(shift(shiftR+(0,a+b))*rotate(270)*tri, rgb(0.6,0.9,0.6)); label("$a$",shiftR+(0,a/2),W,sm); label("$a$",shiftR+(a/2,0),S,sm); label("$b$",shiftR+(a+b,a+b/2),E,sm); label("$b$",shiftR+(a+b/2,a+b),N,sm); }
