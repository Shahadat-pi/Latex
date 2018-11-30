if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Geo_Intermediate-2";
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

import graph; defaultpen(linewidth(0.7)+fontsize(10)); size(200); /* segments and figures */ draw((0,0)--(15,0)); draw((15,0)--(6.66667,9.97775)); draw((6.66667,9.97775)--(0,0)); draw((7.33333,0)--(6.66667,9.97775)); draw(circle((4.66667,2.49444),2.49444)); draw(circle((9.66667,2.49444),2.49444)); draw((4.66667,0)--(4.66667,2.49444)); draw((9.66667,2.49444)--(9.66667,0)); /* points and labels */ label("r",(10.19662,1.92704),SE); label("r",(5.02391,1.8773),SE); dot((0,0)); label("$A$",(-1.04408,-0.60958),NE); dot((15,0)); label("$C$",(15.41907,-0.46037),NE); dot((6.66667,9.97775)); label("$B$",(6.66525,10.23322),NE); label("$15$",(6.01866,-1.15669),NE); label("$13$",(11.44006,5.50815),NE); label("$12$",(2.28834,5.75684),NE); dot((7.33333,0)); label("$M$",(7.56053,-0.908),NE); dot((4.66667,2.49444)); label("$I_1$",(3.97942,2.92179),NE); dot((9.66667,2.49444)); label("$I_2$",(10.04741,2.97153),NE); clip((-3.72991,-6.47862)--(-3.72991,17.44518)--(32.23039,17.44518)--(32.23039,-6.47862)--cycle);
