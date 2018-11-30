if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Geo_Intermediate-3";
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

import graph; defaultpen(linewidth(0.7)+fontsize(10)); size(250); real lsf = 0.5; /* changes label-to-point distance */ pen xdxdff = rgb(0.49,0.49,1); pen qqwuqq = rgb(0,0.39,0); pen fftttt = rgb(1,0.2,0.2); /* segments and figures */ draw((0.2,0.81)--(0.33,0.78)--(0.36,0.9)--(0.23,0.94)--cycle,qqwuqq); draw((0.81,-0.59)--(0.93,-0.54)--(0.89,-0.42)--(0.76,-0.47)--cycle,qqwuqq); draw(circle((2,0),2)); draw((0,0)--(0.23,0.94),linewidth(1.6pt)); draw((0.23,0.94)--(4,0),linewidth(1.6pt)); draw((0,0)--(4,0),linewidth(1.6pt)); draw((0.23,(+0.55-0.94*0.23)/0.35)--(4.67,(+0.55-0.94*4.67)/0.35)); /* points and labels */ label("$1$", (0.26,0.42), SE*lsf); draw((1.29,-1.87)--(2,0)); label("$2$", (2.91,-0.11), SE*lsf); label("$2$", (1.78,-0.82), SE*lsf); pair parametricplot0_cus(real t){ return (0.28*cos(t)+0.23,0.28*sin(t)+0.94); } draw(graph(parametricplot0_cus,-1.209429202888189,-0.24334747753738661)--(0.23,0.94)--cycle,fftttt); pair parametricplot1_cus(real t){ return (0.28*cos(t)+0.59,0.28*sin(t)+0); } draw(graph(parametricplot1_cus,0.0,1.9321634507016043)--(0.59,0)--cycle,fftttt); label("$\theta$", (0.42,0.77), SE*lsf); label("$2\theta$", (0.88,0.38), SE*lsf); draw((2,0)--(0.76,-0.47)); pair parametricplot2_cus(real t){ return (0.28*cos(t)+2,0.28*sin(t)+0); } draw(graph(parametricplot2_cus,-1.9321634507016048,0.0)--(2,0)--cycle,fftttt); label("$2\theta$", (2.18,-0.3), SE*lsf); dot((0,0)); label("$B$", (-0.21,-0.2),NE*lsf); dot((4,0)); label("$A$", (4.03,0.06),NE*lsf); dot((2,0)); label("$O$", (2.04,0.06),NE*lsf); dot((0.59,0)); label("$P$", (0.28,-0.27),NE*lsf); dot((0.23,0.94)); label("$C$", (0.07,1.02),NE*lsf); dot((1.29,-1.87)); label("$D$", (1.03,-2.12),NE*lsf); dot((0.76,-0.47)); label("$E$", (0.56,-0.79),NE*lsf); clip((-0.92,-2.46)--(-0.92,2.26)--(4.67,2.26)--(4.67,-2.46)--cycle);
