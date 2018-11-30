if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-21";
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

defaultpen(linewidth(0.7)+fontsize(10)); unitsize(15); real a = 3.6, b = 4.8, c = (a^2 + b^2)^.5; pair shiftR = (a+b+2,0); pen sm = fontsize(10), heavy = linewidth(1); void htick(pair A, pair B, pair ticklength = (0.15,0)){ draw(A--B ^^ A-ticklength--A+ticklength ^^ B-ticklength--B+ticklength); } void makeshiftarrow(pair A, real dir, real arrowlength = 0.5){ /* Arrow option resizes */ fill(A--A+arrowlength*expi(dir+pi/8)--A+arrowlength*expi(dir-pi/8)--cycle); } real s1 = 5, s2 = 7, s3 = 8; // triangle side lengths pen c1 = rgb(0.5,0.5,1), c2 = rgb(0.5,1,0.8), c3 = rgb(0.5,1,0.5); // color pens pair shiftR = (s1+1,0); // distance between two diagrams pair A=(0,0), B = (s1,0), C = intersectionpoints(Circle(A, s3), Circle(B, s2))[0], I = incenter(A,B,C), D = foot(I,B,C), E = foot(I,A,C), F = foot(I,A,B); // draw left diagram filldraw(A--I--B--cycle, c1, heavy); filldraw(B--I--C--cycle, c2, heavy); filldraw(A--I--C--cycle, c3, heavy); dot(I); draw(incircle(A,B,C), heavy); draw(I--D, linetype("2 2")); draw(I--E, linetype("2 2")); draw(I--F, linetype("2 2")); label("$a$",(A+B)/2,S); label("$b$",(B+C)/2,NE); label("$c$",(A+C)/2,NW); label("$r$",(I+F)/2,W); draw(rightanglemark(I,F,A)); draw(rightanglemark(I,D,B)); draw(rightanglemark(I,E,C)); pair reflectC = C + 2*(foot(C,A,I) - C), reflectI = (reflectC.x - I.x, I.y); // draw right diagram filldraw(shift(shiftR)*(A--I--B--cycle), c1, heavy); filldraw(shift(shiftR+B)*(A--reflectI--reflectC--cycle), c3, heavy); filldraw(shift(shiftR)*(I--B--B+reflectI--cycle), c2, heavy); // dashed perpendiculars; arbitrary coding here draw(shift(shiftR)*(I--F), linetype("2 2")); draw(shift(shiftR)*(B--B+(0,inradius(A,B,C))), linetype("2 2")); draw(shift(shiftR+B)*(reflectI--foot(reflectI,A,B)), linetype("2 2")); draw(shift(shiftR)*rightanglemark(I,F,A)); draw(shift(shiftR)*rightanglemark(B,B+(0,inradius(A,B,C)),I)); draw(shift(shiftR+B)*rightanglemark(reflectI,foot(reflectI,A,B),A)); label("$a$",shiftR+(A+B)/2,S); label("$b$",shiftR+(I+B+reflectI)/2,N); label("$c$",shiftR+B+(A+reflectC)/2,S); label("$r$",shiftR+(I+F)/2,W);
