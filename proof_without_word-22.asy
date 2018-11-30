if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-22";
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

unitsize(15); defaultpen(linewidth(0.7) + fontsize(10)); pen heavy = linewidth(1); real a = 4.5, b = 2.5, c = 2, d = 4; pair A = (a,b), B = (a+c,b+d), C = (c,d), D = IP(B--B+2*(A-B), (0,0)--(a,0)), F = IP(B--B+2*(C-B), (0,0)--(0,d)), G = IP(B--D,(0,d)--(a+c,d)), H = IP(B--F,(a,0)--(a,b+d)), shiftR = (a+c+1,0), shiftR2 = 2*shiftR; // left diagram filldraw((0,0)--(a,0)--(a,d)--(0,d)--cycle, rgb(0.5, 1, 0.5)); draw((0,0)--A--B--C--cycle); draw(shift((a,d))*xscale(c)*yscale(b)*unitsquare); draw(A--D ^^ C--F, linetype("2 2")); draw((0,0)--(a,0)--(a,b)--cycle, heavy); draw(shift(C)*((0,0)--(a,0)--(a,b)--cycle), heavy); label("$a$",(a/2,0),S); label("$d$",(0,d/2),W); label("$b$",B-(0,b/2),E); label("$c$",B-(c/2,0),N); label("$(a,b)$",(a,b),SE,fontsize(8)); label("$(c,d)$",(c,d),NW,fontsize(8)); // middle diagram filldraw(shift(shiftR)*((0,0)--A--(a,d)--G--B--C--(0,d)--cycle), rgb(0.5, 1, 0.5)); filldraw(shift(shiftR)*(G--(a+c,d)--B--cycle), rgb(1,0.5,0.5)); draw(shift(shiftR)*((0,0)--(a,0)--(a,d)--(0,d)--cycle)); draw(shift(shiftR+(a,d))*xscale(c)*yscale(b)*unitsquare); draw(shift(shiftR)*(A--D ^^ C--F), linetype("2 2")); draw(shift(shiftR)*((0,0)--(0,d)--(c,d)--cycle), heavy); draw(shift(shiftR+A)*((0,0)--(0,d)--(c,d)--cycle), heavy); label("$a$",shiftR+(a/2,0),S); label("$d$",shiftR+(0,d/2),W); label("$b$",shiftR+B-(0,b/2),E); label("$c$",shiftR+B-(c/2,0),N); // right diagram filldraw(shift(shiftR2)*((0,0)--A--G--(a,d)--H--C--cycle), rgb(0.5, 1, 0.5)); filldraw(shift(shiftR2)*(G--(a,d)--H--B--cycle), rgb(0.3, 0.9, 0.3)); filldraw(shift(shiftR2)*(G--(a+c,d)--B--cycle), rgb(1,0.5,0.5)); filldraw(shift(shiftR2)*(H--(a,b+d)--B--cycle), rgb(1,0.5,0.5)); draw(shift(shiftR2)*((0,0)--(a,0)--(a,d)--(0,d)--cycle)); draw(shift(shiftR2)*(A--D ^^ C--F), linetype("2 2")); label("$a$",shiftR2+(a/2,0),S); label("$d$",shiftR2+(0,d/2),W); label("$b$",shiftR2+B-(0,b/2),E); label("$c$",shiftR2+B-(c/2,0),N); label("$\overrightarrow{(a,b)}$",shiftR2+(a,b),SE,fontsize(8)); label("$\overrightarrow{(c,d)}$",shiftR2+(c,d),NW,fontsize(8));
