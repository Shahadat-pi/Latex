if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Geo_Intermediate-9";
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

import graph; size(7.99cm); real labelscalefactor = 0.5; pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); pen dotstyle = black; real xmin = 4.087153740193288, xmax = 11.08175859031552, ymin = -4.938019122704778, ymax = 1.194137062512079; draw(circle((7.780000000000009,-1.320000000000002), 2.000000000000000)); draw(circle((7.271934046987930,-1.319179731427737), 1.491933384829670)); draw(circle((9.198812158392690,-0.8249788848962227), 0.4973111282761416)); draw((5.780002606580324,-1.316771019595571)--(9.779997393419690,-1.323228980404432)); draw((9.198812158392690,-0.8249788848962227)--(9.198009254448635,-1.322289365031666)); draw((7.271934046987930,-1.319179731427737)--(9.198812158392690,-0.8249788848962227)); draw((9.198812158392690,-0.8249788848962227)--(7.780000000000009,-1.320000000000002)); dot((7.780000000000009,-1.320000000000002),dotstyle); label("$C$", (7.707377218471464,-1.576266740352400), NE * labelscalefactor); dot((7.271934046987930,-1.319179731427737),dotstyle); label("$D$", (7.303064016111554,-1.276266740352400), NE * labelscalefactor); dot((9.198812158392690,-0.8249788848962227),dotstyle); label("$E$", (9.225301294671791,-0.7792624249832147), NE * labelscalefactor); dot((9.198009254448635,-1.322289365031666),dotstyle); label("$F$", (9.225301294671791,-1.276266740352400), NE * labelscalefactor); dot((9.779997393419690,-1.323228980404432),dotstyle); label("$B$", (9.810012253929656,-1.276266740352400), NE * labelscalefactor); dot((5.780002606580324,-1.316771019595571),dotstyle); label("$A$", (5.812051070003994,-1.276266740352400), NE * labelscalefactor); clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
