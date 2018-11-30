if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-9";
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

defaultpen(linewidth(0.7)); unitsize(15); pen sm = fontsize(10); int n = 5, fib = 1, fib2 = 1, xsum = 1, ysum = 0; real h = 0.15; void fillsq(pair A = (0,0), real s, pen p = invisible, pen l = linewidth(1)){ filldraw(shift(A)*xscale(s)*yscale(s)*unitsquare, p, l); } void htick(pair A, pair B, pair ticklength = (0.15,0)){ draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } for(int i = 0; i < n; ++i) { fillsq((0,h*ysum),h*fib2,rgb(0.9,1,0.9)); fillsq((h*xsum,0),h*fib,rgb(1,0.9,0.9)); if(i == n-1){ label("$F_{n}^2$",h*(xsum+fib/2,fib/2),sm); label("$F_{n-1}^2$",h*(fib2/2,ysum+fib2/2),sm); } else if(i == n-2){ label("$F_{n-2}^2$",h*(xsum+fib/2,fib/2),sm); label("$F_{n-3}^2$",h*(fib2/2,ysum+fib2/2),sm); } fib = fib + fib2; fib2 = fib - fib2; xsum = fib; ysum = fib2; fib = fib + fib2; fib2 = fib - fib2; } htick(h*(xsum,0)+(1,0),h*(xsum,ysum)+(1,0)); label("$F_n$",h*(xsum,ysum/2)+(1,0), E, sm); htick(h*(0,ysum)+(0,1),h*(xsum-fib+fib2,ysum)+(0,1),(0,0.15)); label("$F_{n-1}$",h*((xsum-fib+fib2)/2,ysum)+(0,1), N, sm); htick(h*(xsum,ysum)+(0,1),h*(xsum-fib+fib2,ysum)+(0,1),(0,0.15)); label("$F_{n}$",h*((2*xsum-fib+fib2)/2,ysum)+(0,1), N, sm);
