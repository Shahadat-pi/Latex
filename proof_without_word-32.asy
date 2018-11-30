if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-32";
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

defaultpen(linewidth(0.7)); unitsize(30); real r = 0.2; pair endPt1 = (-2.5,-1), endPt2 = (2.5,-1); // endpoints of R^1 line real projections[] = {-1.5, -0.75, 1, 2.2}; // x-coordinates of steoreographic projections on y=-1 void makeshiftarrow(pair A, real dir, real arrowlength = r){ /* Arrow option resizes, so draw makeshift arrows */ fill(A--A+arrowlength*expi(dir+pi/8)--A+arrowlength*expi(dir-pi/8)--cycle); } draw(endPt1 -- endPt2); draw(unitcircle); for(int i = 0; i < projections.length; ++i) { draw((0,1) -- (projections[i],-1), linetype("2 2")); dot((projections[i],-1), Fill(red)); dot(OP((0,1) -- (projections[i],-1),unitcircle), Fill(yellow)); } dot((0,1), Fill(green)); makeshiftarrow(endPt1, 0); makeshiftarrow(endPt2, pi); [/asy][asy] import three; defaultpen(linewidth(0.7)); unitsize(20); currentprojection = orthographic(0.3,-2,0.6); pen gridpen = dotted; int gridmin = -2, gridmax = 2, gridlines = 6; pair projections[] = {(1,-1),(1,-2),(2,-2),(2,-1)}; triple IPs[] = new triple[4]; draw((1,-1,-1)--(1,-2,-1)--(2,-2,-1)--(2,-1,-1)--cycle); for(int i = 0; i < gridlines; ++i) { draw((gridmin,gridmin+(gridmax-gridmin)*(i+1)/(gridlines+1),-1)--(gridmax,gridmin+(gridmax-gridmin)*(i+1)/(gridlines+1),-1), gridpen); draw((gridmin+(gridmax-gridmin)*(i+1)/(gridlines+1),gridmin,-1)--(gridmin+(gridmax-gridmin)*(i+1)/(gridlines+1),gridmax,-1), gridpen); } draw(unitsphere,white); draw(arc((0,0,0), (1,0,0), (-1,0,0), (0,0,1)), linetype("2 2")); draw(arc((0,0,0), (-1,0,0), (1,0,0), (0,0,1))); // draw(circle((0,0,0), 1, (0,1,0))); // draw projection points for(int i = 0; i < projections.length; ++i) { real px = projections[i].x/2, py = projections[i].y/2, pxy = 1 + px*px + py*py; draw((0,0,1)--(2*px, 2*py, -1), linetype("2 2")); triple IP = (2*px/pxy, 2*py/pxy, (pxy-2)/pxy), OP = (2*px, 2*py, -1); dot(IP, yellow); draw(circle(IP, 0.06, (0,1,0))); IPs[i] = IP; dot(OP, red); draw(circle(OP, 0.06, (0,1,0))); if(i != 0) draw(IPs[i] -- IPs[i-1], dotted); } draw(IPs[0]--IPs[3], dotted); dot((0,0,1),green); draw(circle((0,0,1), 0.06, (0,1,0)));
