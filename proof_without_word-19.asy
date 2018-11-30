if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="proof_without_word-19";
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

import graph; defaultpen(linewidth(0.7)); unitsize(15); pen ds=black, ls = linetype("2 2"); pen fueaev=rgb(1,0.4,0.4), ffffea=rgb(1,1,0.4), evfuea=rgb(0.4,1,0.4), fffuev=rgb(1,0.5,0.3), fzfzfz=rgb(0.8,0.8,0.8), evevfz=rgb(0.4,0.4,1); fill((0,0)--(1.5,2)--(-0.5,3.5)--(-2,1.5)--cycle,fueaev); fill((1.5,2)--(4.17,0)--(6.17,2.67)--(3.5,4.67)--cycle,fueaev); fill((4.17,0)--(0,0)--(0,-4.17)--(4.17,-4.17)--cycle,fueaev); fill((1.5,2)--(2,2.67)--(2,1.63)--cycle,ffffea); fill((2,2.67)--(2,1.63)--(4.17,0)--(6.17,2.67)--cycle,evfuea); fill((0,3.13)--(0,0)--(1.5,2)--cycle,fffuev); fill((-0.5,3.5)--(0,3.13)--(0,0)--(-2,1.5)--cycle,fueaev); fill((0,0)--(1.5,2)--(4.17,0)--cycle,fzfzfz); fill((2,2.67)--(3.5,4.67)--(6.17,2.67)--cycle,evevfz); fill((0,-4.17)--(1.5,-2.17)--(0,-1.04)--cycle,fffuev); fill((1.5,-2.17)--(0,-4.17)--(4.17,-4.17)--cycle,evevfz); fill((4.17,0)--(3.67,-0.67)--(4.17,-1.04)--cycle,white); fill((3.67,-0.67)--(2.17,-2.67)--(4.17,-4.17)--(4.17,-1.04)--cycle,fueaev); fill((0,0)--(0,-1.04)--(2.17,-2.67)--(4.17,0)--cycle,evfuea); fill((4.17,0)--(3.67,-0.67)--(4.17,-1.04)--cycle, ffffea); draw((0,0)--(1.5,2)); draw((0,0)--(4.17,0)); draw((1.5,2)--(4.17,0)); draw((0,0)--(1.5,2)); draw((1.5,2)--(-0.5,3.5)); draw((-0.5,3.5)--(-2,1.5)); draw((-2,1.5)--(0,0)); draw((1.5,2)--(4.17,0)); draw((4.17,0)--(6.17,2.67)); draw((6.17,2.67)--(3.5,4.67)); draw((3.5,4.67)--(1.5,2)); draw((4.17,0)--(0,0)); draw((0,0)--(0,-4.17)); draw((0,-4.17)--(4.17,-4.17)); draw((4.17,-4.17)--(4.17,0)); draw((0,0)--(-2,1.5)); draw((-2,1.5)--(-0.5,3.5)); draw((-0.5,3.5)--(1.5,2)); draw((0,0)--(0,-4.17)); draw((0,-4.17)--(4.17,-4.17)); draw((4.17,-4.17)--(4.17,0)); draw((4.17,0)--(6.17,2.67)); draw((6.17,2.67)--(3.5,4.67)); draw((3.5,4.67)--(1.5,2)); draw((0,-4.17)--(0,0)); draw((0,0)--(0,3.13)); draw((1.5,2)--(2,2.67)); draw((2,2.67)--(2,1.63)); draw((2,1.63)--(1.5,2)); draw((2,2.67)--(2,1.63)); draw((2,1.63)--(4.17,0)); draw((4.17,0)--(6.17,2.67)); draw((6.17,2.67)--(2,2.67)); draw((0,3.13)--(0,0)); draw((0,0)--(1.5,2)); draw((1.5,2)--(0,3.13)); draw((-0.5,3.5)--(0,3.13)); draw((0,3.13)--(0,0)); draw((0,0)--(-2,1.5)); draw((-2,1.5)--(-0.5,3.5)); draw((0,0)--(1.5,2)); draw((1.5,2)--(4.17,0)); draw((4.17,0)--(0,0)); draw((2,2.67)--(3.5,4.67)); draw((3.5,4.67)--(6.17,2.67)); draw((6.17,2.67)--(2,2.67)); draw((0,-1.04)--(4.17,-4.17)); draw((0,-4.17)--(1.5,-2.17)); draw((1.5,-2.17)--(0,-1.04)); draw((0,-1.04)--(0,-4.17)); draw((1.5,-2.17)--(0,-4.17)); draw((0,-4.17)--(4.17,-4.17)); draw((4.17,-4.17)--(1.5,-2.17)); draw((4.17,0)--(3.67,-0.67)); draw((3.67,-0.67)--(4.17,-1.04)); draw((4.17,-1.04)--(4.17,0)); draw((3.67,-0.67)--(2.17,-2.67)); draw((2.17,-2.67)--(4.17,-4.17)); draw((4.17,-4.17)--(4.17,-1.04)); draw((4.17,-1.04)--(3.67,-0.67)); draw((0,0)--(0,-1.04)); draw((0,-1.04)--(2.17,-2.67)); draw((2.17,-2.67)--(4.17,0)); draw((4.17,0)--(0,0)); draw((-0.5,3.5)--(1.5,6.17),ls); draw((1.5,6.17)--(3.5,4.67),ls); draw((0,3.13)--(0,4.17),ls); draw((1.5,6.17)--(1.5,2),ls); draw((2,5.79)--(2,2.67),ls); draw(rightanglemark((0,0),(1.5,2),(4.17,0)));
