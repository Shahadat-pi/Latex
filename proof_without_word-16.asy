if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-16";
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

defaultpen(linewidth(0.7)); unitsize(15); real a = 3.6, b = 4.8, c = (a^2 + b^2)^.5; pair shiftR = (a+b+2,0); pen sm = fontsize(10), heavy = linewidth(1.6); void htick(pair A, pair B, pair ticklength = (0.15,0)){ draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } void makeshiftarrow(pair A, real dir, real arrowlength = 0.5){ /* Arrow option resizes */ fill(A--A+arrowlength*expi(dir+pi/8)--A+arrowlength*expi(dir-pi/8)--cycle); } { /* left side */ filldraw(xscale(a+b)*yscale(a+b)*unitsquare, rgb(1,0.9,0.8)); filldraw((b,0) --(b,a)--(0,a) --cycle, rgb(0.9,1,0.9)); filldraw((0,a) --(a,a)--(a,a+b)--cycle, rgb(0.9,1,0.9)); filldraw((a,a+b)--(a,b)--(a+b,b)--cycle, rgb(0.9,1,0.9)); filldraw((a+b,b)--(b,b)--(b,0) --cycle, rgb(0.9,1,0.9)); htick((0,-c/10),(b,-c/10),(0,0.15)); htick((-c/10,0),(-c/10,a),(0.15,0)); label("$a$",(-c/10,a/2),W,sm); label("$b$",(b/2,-c/10),S,sm); label("$c$", (a/2,a+b/2),NW,sm); label("$b-a$",(b,(a+b)/2),E,sm); } { /* right side */ filldraw(shift(shiftR)*xscale(a+b)*yscale(a+b)*unitsquare, rgb(1,0.9,0.8)); filldraw(shift(shiftR)*((0,a) --(a,a)--(a,a+b)--cycle), rgb(0.9,1,0.9)); filldraw(shift(shiftR)*((a,a+b)--(a,b)--(a+b,b)--cycle), rgb(0.9,1,0.9)); fill(shift(shiftR )*xscale(a)*yscale(a)*unitsquare,rgb(0.9,0.7,0.7)); fill(shift(shiftR+(a,0))*xscale(b)*yscale(b)*unitsquare,rgb(0.9,0.7,0.7)); filldraw(shift(shiftR)*((a+b,b)--(b,b)--(b,0) --cycle), rgb(0.7,0.9,0.7)); filldraw(shift(shiftR)*((b,0) --(b,a)--(0,a) --cycle), rgb(0.7,0.9,0.7)); draw(shift(shiftR )*xscale(a)*yscale(a)*unitsquare,heavy); draw(shift(shiftR+(a,0))*xscale(b)*yscale(b)*unitsquare,heavy); draw(shift(shiftR)*((2*a/3,a+b/3)--(b/3,a/3) ^^ (a+b/3,b+a/3)--(b+2*a/3,b/3))); makeshiftarrow(shiftR+(b/3,a/3),angle((2*a/3,a+b/3)-(b/3,a/3))); makeshiftarrow(shiftR+(b+2*a/3,b/3),angle((a+b/3,b+a/3)-(b+2*a/3,b/3))); label("$a$",shiftR+(0,a/2),W,sm); label("$b$",shiftR+(a+b,b/2),E,sm); label("$c$",shiftR+(a/2,a+b/2),NW,sm); }
