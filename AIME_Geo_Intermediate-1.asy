if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Geo_Intermediate-1";
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

import graph;
defaultpen(linewidth(0.7)+fontsize(10)); size(500); pen zzttqq = rgb(0.6,0.2,0); pen xdxdff = rgb(0.4902,0.4902,1); /* segments and figures */ draw((0,-154.31785)--(0,0)); draw((0,0)--(252,0)); draw((0,0)--(126,0),zzttqq); draw((126,0)--(63,109.1192),zzttqq); draw((63,109.1192)--(0,0),zzttqq); draw((-71.4052,(+9166.01287-109.1192*-71.4052)/21)--(504.60925,(+9166.01287-109.1192*504.60925)/21)); draw((0,-154.31785)--(252,-154.31785)); draw((252,-154.31785)--(252,0)); draw((0,0)--(84,0)); draw((84,0)--(252,0)); draw((63,109.1192)--(63,0)); draw((84,0)--(84,-154.31785)); draw(arc((126,0),126,0,180)); /* points and labels */ dot((0,0)); label("$A$",(-16.43287,-9.3374),NE/2); dot((252,0)); label("$B$",(255.242,5.00321),NE/2); dot((0,-154.31785)); label("$D$",(3.48464,-149.55669),NE/2); dot((252,-154.31785)); label("$C$",(255.242,-149.55669),NE/2); dot((126,0)); label("$O$",(129.36332,5.00321),NE/2); dot((63,109.1192)); label("$N$",(44.91307,108.57427),NE/2); label("$126$",(28.18236,40.85473),NE/2); dot((84,0)); label("$U$",(87.13819,5.00321),NE/2); dot((113.69848,-154.31785)); label("$T$",(116.61611,-149.55669),NE/2); dot((63,0)); label("$N'$",(66.42398,5.00321),NE/2); label("$84$",(41.72627,-12.5242),NE/2); label("$168$",(167.60494,-12.5242),NE/2); dot((84,-154.31785)); label("$T'$",(87.13819,-149.55669),NE/2); dot((252,0)); label("$I$",(255.242,5.00321),NE/2); clip((-71.4052,-225.24323)--(-71.4052,171.51361)--(504.60925,171.51361)--(504.60925,-225.24323)--cycle);
