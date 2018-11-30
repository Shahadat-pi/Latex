if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-23";
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

defaultpen(linewidth(0.7)); unitsize(15); real r = 3.5; // radius pair shiftL = (-2.5*r,0); // distance between 2 diagrams /* returns the vertex of the interior equilateral triangle with one edge shared with the dodecagon */ pair dodecagonPt(int i) { return r*dir(i*360/12) + rotate(60)*(r*(dir((i+1)*360/12) - dir(i*360/12))); } /* left diagram */ path dodecagon = shiftL+(r,0)--shiftL+r*dir(30); for(int i = 1; i < 12; ++i) dodecagon = dodecagon--shiftL+r*dir(i*30); dodecagon = dodecagon--cycle; filldraw(dodecagon, rgb(0.5,1,0.5)); draw(Circle(shiftL, r), linetype("2 2")); dot((0,0)); draw(shiftL--shiftL+(r,0)); label("$R$",shiftL+(r/2,0),S); /* right diagram */ for(int i = 0; i < 9; ++i) { filldraw((0,0)--r*dir(i*360/12)--dodecagonPt(i)--cycle, rgb(0,0.8,0)); filldraw((0,0)--r*dir((i+1)*360/12)--dodecagonPt(i)--cycle, rgb(0,0.8,0)); filldraw(r*dir(i*360/12)--r*dir((i+1)*360/12)--dodecagonPt(i)--cycle, rgb(0.8,0.8,0)); if (i % 3 == 1) { filldraw(r*2^.5*dir(floor(i/3)*90+45)--r*dir(i*360/12)--r*dir((i+1)*360/12)--cycle, rgb(0.8,0.8,0)); filldraw(r*2^.5*dir(floor(i/3)*90+45)--r*dir(i*360/12)--r*dir(floor(i/3)*90)--cycle, rgb(0,0.8,0)); filldraw(r*2^.5*dir(floor(i/3)*90+45)--r*dir((i+1)*360/12)--r*dir(floor(i/3)*90+90)--cycle, rgb(0,0.8,0)); } } for(int i = 9; i < 12; ++i) { filldraw((0,0)--r*dir(i*360/12)--dodecagonPt(i)--cycle, rgb(0.5,1,0.5), linetype("2 2")); filldraw((0,0)--r*dir((i+1)*360/12)--dodecagonPt(i)--cycle, rgb(0.5,1,0.5), linetype("2 2")); filldraw(r*dir(i*360/12)--r*dir((i+1)*360/12)--dodecagonPt(i)--cycle, rgb(1,1,0.5), linetype("2 2")); }
