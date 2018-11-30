if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="Directed-Angles-11";
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

unitsize(2.5cm);
pair A = Drawing("A", dir(100), dir(100));
pair B = Drawing("B", dir(209), dir(250));
pair C = Drawing("C", dir(331), dir(0));
Drawing(A--B--C--cycle);
pair H = orthocenter(A,B,C);
pair Ka = foot(A,B,C);
pair Kc = foot(C,A,B);
Drawing("H", H, dir(45));
pair Ha = Drawing("H_A", 2*Ka-H, dir(-70));
pair Hc = Drawing("H_C", 2*Kc-H, dir(135));
pair K = Drawing("K", dir(-84), dir(-70));
pair M = Drawing("M", reflect(B,C) * K, dir(-10));
pair L = Drawing("L", reflect(B,A) * K, dir(240));
pair E = Drawing("E'", 2*foot(origin,M,Ha)-Ha, dir(70));
Drawing(A--Ha--B--Hc--C);
Drawing(L--Hc); Drawing(Hc--E, dotted);
draw(unitcircle);
draw(Ha--E);
draw(B--H--K);
draw(L--K--M,dashed);
pair O = circumcenter(B,L,E);
draw(arc(O, abs(O-L), 170, 400), dotted);