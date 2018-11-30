if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-17";
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

defaultpen(linewidth(0.7)); unitsize(15); pen sm = fontsize(10); real a = 3/1.2, b = 4/1.2, c = (a^2 + b^2)^.5, rot1 = acos(a/c); pair shiftR = (a+b+c,0); path top = (0,c)--a*expi(rot1)+(0,c)--(c,c), sq1=rotate(rot1*180/pi)*xscale(a)*yscale(a)*unitsquare, sq2=shift(c,0)*rotate(rot1*180/pi)*xscale(b)*yscale(b)*unitsquare; void htick(pair A, pair B, pair ticklength = (0.15,0)){ draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } { /* first picture */ filldraw((0,0)--(c,0)--a*expi(rot1)--cycle, rgb(1,0.85,0.7)); fill(sq1, rgb(0.95,1,0.95)); fill(sq2, rgb(0.95,1,0.95)); filldraw(rotate(270)*xscale(c)*yscale(c)*unitsquare, rgb(0.96,1,0.96)); filldraw((0,0)--top--(c,0)--a*expi(rot1)--cycle, rgb(0.5,0.9,0.5)); draw(sq1 ^^ sq2); draw(a*expi(rot1+pi/2)--top ^^ a*expi(rot1)--a*expi(rot1)+(0,c)); label("$a$",a/2*expi(rot1),NW,sm); label("$b$",a/2*expi(rot1)+(c/2,0),NE,sm); label("$c$",(c/2,0),S,sm); } { /* second picture */ fill(shift(shiftR)*sq1, rgb(0.95,1,0.95)); fill(shift(shiftR)*sq2, rgb(0.95,1,0.95)); filldraw(shift(shiftR)*rotate(270)*xscale(c)*yscale(c)*unitsquare, rgb(0.96,1,0.96)); filldraw(shift(shiftR+(0,-c))*((0,0)--top--(c,0)--a*expi(rot1)--cycle), rgb(0.5,0.9,0.5)); filldraw(shift(shiftR+(0,-c))*((0,0)--(c,0)--a*expi(rot1)--cycle), rgb(1,0.85,0.7)); draw(shift(shiftR)*((0,0)--(c,0) ^^ sq1 ^^ sq2 ^^ a*expi(rot1+pi/2)--top ^^ a*expi(rot1)--a*expi(rot1)+(0,c))); label("$a$",shiftR+a/2*expi(rot1),NW,sm); label("$b$",shiftR+a/2*expi(rot1)+(c/2,0),NE,sm); label("$c$",shiftR+(c/2,0),S,sm); }
