if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-10";
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

defaultpen(linewidth(0.7)); unitsize(15); int n = 10; /* # of iterations */ real s = 6; /* square size */ pair shiftR = (s+2,0); pen sm = fontsize(10); void fillrect(pair A, pair B = (0,0), pen p = invisible, pen l = linewidth(1)){ filldraw(A--(A.x,B.y)--B--(B.x,A.y)--cycle, p, l); } void htick(pair A, pair B, pair ticklength = (0,0.15)){ draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } for(int i = 0; i < 2; ++i) /* left */ fillrect((s/2^(ceil(i/2)),s/2^(floor(i/2)))); for(int i = 0; i < n; ++i) /* right */ fillrect(shiftR,shiftR + (s/2^(ceil(i/2)),s/2^(floor(i/2)))); label("$\frac 12$",(s*3/4,s/2),sm); label("$\cdots$",(s*1/4,s/2),sm); label("$\frac 12$",shiftR+(s*3/4,s/2),sm); label("$\cdots$",shiftR+(s*1/4,s/2),sm); label("$\frac 14$",shiftR+(s*1/4,s*3/4),sm); label("$\frac 18$",shiftR+(s*3/8,s/4),sm); htick((0,-1), (s,-1)); htick(shiftR + (0,-1), shiftR + (s,-1)); label("$1$",(s/2,-1),S,sm); label("$1$",shiftR+(s/2,-1),S,sm);
