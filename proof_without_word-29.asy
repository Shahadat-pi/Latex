if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-29";
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

unitsize(15); defaultpen(linewidth(0.7)); real a=2.5,b=5,s=a+b; pen colors[] = {rgb(0.9,0.2,0.2), rgb(0.2,0.9,0.2), rgb(0.2,0.2,0.9)}; pen sm = fontsize(8); void fillrect(pair A, pair B, pen p = invisible, pen l = linewidth(1)){ filldraw(A--(A.x,B.y)--B--(B.x,A.y)--cycle, p, l); } void htick(pair A, pair B, pair ticklength = (0.2,0)){ draw(A--B); draw(A-ticklength--A+ticklength); draw(B-ticklength--B+ticklength); } fillrect((0,0),(s,s)); fillrect((a,b),(s,s),colors[0]); filldraw((0,a)--(a,a)--(s/2,s/2)--(a,b)--(a,s)--(0,s)--cycle,colors[1],linewidth(1)); filldraw((0,0)--(b,0)--(b,b)--(a,a)--(0,a)--cycle,colors[2],linewidth(1)); draw((0,0)--(a,a),linewidth(1)); draw((s/2,s/2)--(b,a)--(a,a)--(a,b),linewidth(0.7)+linetype("4 2")); htick((s+1,0),(s+1,b)); htick((s+1,b),(s+1,s)); /* in labels, a,b swapped */ label("$a$",(s+1,b/2),E);label("$b$",(s+1,(s+b)/2),E); label("$ab$",(a+s,b+s)/2,sm); label("$\frac{(a+b)^2}{4}$",(a,a+s)/2,sm); label("$\frac{a^2}2$",(s/2,a*2/3),sm); label("$\frac{b^2}2$",(a/4,a*2/3),sm);
