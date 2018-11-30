if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="new-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size (7cm, 0);
pair A, B, C, D;
A = (0,0);
B = (2,1);
C = (2,2);
D = (4.0);
draw (A - B, red);
draw (C - D, blue);
\end {asy}
\end {document}
