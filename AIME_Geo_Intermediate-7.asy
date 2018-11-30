if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Geo_Intermediate-7";
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

unitsize(8cm); pair a, o, d, r, e, m, cm, c,p; o =(0,0); d = (0.5, 0); r = (0,sqrt(3)/2); e = (-sqrt(3)/2,0); m = midpoint(d--r); draw(e--m); cm = foot(r, e, m); draw(L(r, cm,1, 1)); c = IP(L(r, cm, 1, 1), e--d); clip(r--d--e--cycle); draw(r--d--e--cycle); draw(rightanglemark(e, cm, c, 1.5)); a = -(4sqrt(3)+9)/11+0.5; dot(a); draw(a--r, dashed); draw(a--c, dashed); pair[] PPAP = {a, o, d, r, e, m, c}; for(int i = 0; i<7; ++i) { dot(PPAP[i]); } label("$A$", a, W); label("$E$", e, SW); label("$C$", c, S); label("$O$", o, S); label("$D$", d, SE); label("$M$", m, NE); label("$R$", r, N); p = foot(a, r, c); label("$P$", p, NE); draw(p--m, dashed); draw(a--p, dashed); dot(p);
