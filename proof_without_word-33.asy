if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-33";
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

import graph; usepackage("amsmath"); size(13cm); real labelscalefactor = 0.5; /* changes label-to-point distance */ pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */ pen dotstyle = black; /* point style */ real xmin = -0.4717093412177357, xmax = 7.405441345585962, ymin = -1.1854534297865673, ymax = 7.342957746870971; /* image dimensions */ pen uququq = rgb(0.25098039215686274,0.25098039215686274,0.25098039215686274); pen aqaqaq = rgb(0.6274509803921569,0.6274509803921569,0.6274509803921569); pen qqwuqq = rgb(0.,0.39215686274509803,0.); pen cqcqcq = rgb(0.7529411764705882,0.7529411764705882,0.7529411764705882); draw((0.,0.)--(0.,1.)--(1.,1.)--cycle); draw((1.,1.)--(0.,3.)--(0.,1.)--cycle, uququq); draw((0.,3.)--(6.,6.)--(1.,1.)--cycle, aqaqaq); draw(arc((1.,1.),0.3101240427875472,180.,225.)--(1.,1.)--cycle, qqwuqq); draw(arc((1.,1.),0.3101240427875472,116.56505117707799,180.)--(1.,1.)--cycle, qqwuqq); draw(arc((1.,1.),0.3101240427875472,45.,116.56505117707799)--(1.,1.)--cycle, qqwuqq); /* draw grid of horizontal/vertical lines */ pen gridstyle = linewidth(0.7) + cqcqcq; real gridx = 1., gridy = 1.; /* grid intervals */ for(real i = ceil(xmin/gridx)*gridx; i <= floor(xmax/gridx)*gridx; i += gridx) draw((i,ymin)--(i,ymax), gridstyle); for(real i = ceil(ymin/gridy)*gridy; i <= floor(ymax/gridy)*gridy; i += gridy) draw((xmin,i)--(xmax,i), gridstyle); /* end grid */ /* draw figures */ draw((0.,0.)--(0.,1.)); draw((0.,1.)--(1.,1.)); draw((1.,1.)--(0.,0.)); draw((1.,1.)--(0.,3.), uququq); draw((0.,3.)--(0.,1.), uququq); draw((0.,1.)--(1.,1.), uququq); draw((0.,3.)--(6.,6.), aqaqaq); draw((6.,6.)--(1.,1.), aqaqaq); draw((1.,1.)--(0.,3.), aqaqaq); label("$\arctan 1 + \arctan 2 + \arctan 3 = \pi$",(1.544096936901321,0.5925910821953678),SE*labelscalefactor,fontsize(10)); /* dots and labels */ dot((0.,0.),linewidth(3.pt) + dotstyle); dot((0.,1.),dotstyle); dot((1.,1.),dotstyle); dot((0.,3.),dotstyle); dot((6.,6.),dotstyle); clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
