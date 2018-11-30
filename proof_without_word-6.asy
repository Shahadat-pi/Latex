if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-6";
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

defaultpen(linewidth(0.7)); unitsize(15); pen heavy = linewidth(2); /* global configurable variables */ int n2 = 4, n = floor(n2*(n2+1)/2); // number of colors, number of layers real h = 0.6; // scale factor of diagram pair shiftR1 = (n*h+1,0), // middle diagram shift offset shiftR2 = shiftR1 + (n*h+1,0); // right diagram shift offset int lvl(int i) { return ceil(((8*i+9)^.5-1)/2); } /* return level of square i */ pen colors(int i) { return rgb(0.5-lvl(i)/5,0.3+lvl(i)/7,1-lvl(i)/6); } /* shading */ /* draw tick line with label, segment between A and B */ void htick(pair A, pair B,pair ticklength = (0.15,0)) { draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } /* gradient triangle */ for(int i = 0; i < n; ++i){ for(int j = 0; j < 2*i+1; ++j){ filldraw(shift(shiftR1)*scale(h)*shift((j-i,-i))*unitsquare,colors(i)); /* if(j % lvl(i) == 0 && j != lvl(i)^2) draw(shift(shiftR1)*scale(h)*shift((j-i,-i))*((0,0)--(0,1)--(1,1)), heavy); if(j == 2*i) // right border draw(shift(shiftR1)*scale(h)*shift((j-i,-i))*((1,0)--(1,1)--(0,1)), heavy); */ } draw(shift(shiftR1)*scale(h)*shift((-i,-i))*((0,0)--(0,1)--(1,1)), heavy); draw(shift(shiftR1)*scale(h)*shift(( i,-i))*((1,0)--(1,1)--(0,1)), heavy); } // return kth triangular number (actually, 1+2+...+k) int tri(int k) { return ((int) (k*(k+1)/2)); } for(int i = 0; i < n2; ++i) { draw(shift(shiftR1)*scale(h)*shift((0-tri(i),0-tri(i)))*((0,1)--(2*tri(i)+1,1)), heavy); if(i % 2 == 0) { // vertical heavy lines for odd layers draw(shift(shiftR1)*scale(h)*((-i/2,1-tri(i))--(-i/2,-i-tri(i))), heavy); draw(shift(shiftR1)*scale(h)*((1+i/2,1-tri(i))--(1+i/2,-i-tri(i))), heavy); } else { // jagged heavy lines for even layers pair jag1 = (-(i+1)/2,-(i-1)/2-tri(i)), jag2 = (1+(i+1)/2,-(i-1)/2-tri(i)); draw(shift(shiftR1)*scale(h)*(jag1+(0,1+(i-1)/2) -- jag1 -- jag1+(1,0) -- jag1+( 1,-(i+1)/2)), heavy); draw(shift(shiftR1)*scale(h)*(jag2+(0,1+(i-1)/2) -- jag2 -- jag2-(1,0) -- jag2+(-1,-(i+1)/2)), heavy); } } draw(shift(shiftR1)*scale(h)*shift((-n2*(n2+1)/2,-n2*(n2+1)/2))*((1,1)--(2*n2*(n2+1)/2,1)), heavy); /* gradient square */ for(int i = 0; i < n; ++i) for(int j = 0; j < n; ++j) filldraw(shift(shiftR2)*scale(h)*shift((j,-i))*unitsquare, colors((i>j)?i:j)); for(int i = 0; i < n2; ++i) { draw(shift(shiftR2)*scale(h)*((0,1-tri(i))--(tri(i),1-tri(i))--(tri(i),1)),heavy); draw(shift(shiftR2)*scale(h)*shift(tri(i),-i-tri(i))*scale(i+1)*unitsquare,heavy); } /* outside boundary */ draw(shift(shiftR2)*scale(h)*shift((0,1-n))*scale(n)*unitsquare, heavy); /* n nxn squares for(int i = 0; i < n2; ++i){ filldraw(scale(h)*shift((-i,-(i+1)*(i+2)/2+1))*xscale(i+1)*yscale(i+1)*unitsquare, colors(floor(i*(i+1)/2)), heavy); }
