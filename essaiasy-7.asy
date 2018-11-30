if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-7";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
import olympiad;
/* modified version of olympiad modules */
import three; real markscalefactor = 0.03; path3 rightanglemark(triple A, triple B, triple C, real s=8) { triple P,Q,R; P=s*markscalefactor*unit(A-B)+B; R=s*markscalefactor*unit(C-B)+B; Q=P+R-B; return P--Q--R; } path3 anglemark(triple A, triple B, triple C, real t=8 ... real[] s) { triple M,N,P[],Q[]; path3 mark; int n=s.length; M=t*markscalefactor*unit(A-B)+B; N=t*markscalefactor*unit(C-B)+B; for (int i=0; i<n; ++i) { P[i]=s[i]*markscalefactor*unit(A-B)+B; Q[i]=s[i]*markscalefactor*unit(C-B)+B; } mark=arc(B,M,N); for (int i=0; i<n; ++i) { if (i%2==0) { mark=mark--reverse(arc(B,P[i],Q[i])); } else { mark=mark--arc(B,P[i],Q[i]); } } if (n%2==0 && n!=0) mark=(mark--B--P[n-1]); else if (n!=0) mark=(mark--B--Q[n-1]); else mark=(mark--B--cycle); return mark; } size(200); import three; defaultpen(black+linewidth(0.7)); pen small = fontsize(10); triple A=(0,0,0),B=(3,0,0),C=(1.8,10,0),D=(1.5,4,4),Da=(D.x,D.y,0),Db=(D.x,0,0); currentprojection=perspective(16,-10,8); draw(surface(A--B--C--cycle),rgb(0.6,0.7,0.6),nolight); draw(surface(A--B--D--cycle),rgb(0.7,0.6,0.6),nolight); /* draw pyramid - other lines + angles */ draw(A--B--C--A--D--B--D--C); draw(D--Da--Db--cycle); draw(rightanglemark(D,Da,Db));draw(rightanglemark(A,Db,D));draw(anglemark(Da,Db,D,15)); /* labeling points */ label("$A$",A,SW);label("$B$",B,S);label("$C$",C,S);label("$D$",D,N);label("$30^{\circ}$",Db+(0,.35,0.08),(1.5,1.2),small); label("$3$",(A+B)/2,S); label("$15\mathrm{cm}^2$",(Db+C)/2+(0,-0.5,-0.1),NE,small); label("$12\mathrm{cm}^2$",(A+D)/2,NW,small);
