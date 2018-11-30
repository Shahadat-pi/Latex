if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="essaiasy-18";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cse5;
import olympiad;
import graph;
unitsize(1 cm); pair translate; pair[] A, B, C, U, V, W, X, Y, Z; A[0] = (1.5,2.8); B[0] = (3.2,0); C[0] = (0,0); U[0] = (0.69*A[0] + 0.31*B[0]); V[0] = (0.69*A[0] + 0.31*C[0]); W[0] = (0.69*C[0] + 0.31*A[0]); X[0] = (0.69*C[0] + 0.31*B[0]); Y[0] = (0.69*B[0] + 0.31*C[0]); Z[0] = (0.69*B[0] + 0.31*A[0]); translate = (7,0); A[1] = (1.3,1.1) + translate; B[1] = (2.4,-0.7) + translate; C[1] = (0.6,-0.7) + translate; U[1] = U[0] + translate; V[1] = V[0] + translate; W[1] = W[0] + translate; X[1] = X[0] + translate; Y[1] = Y[0] + translate; Z[1] = Z[0] + translate; draw (A[0]--B[0]--C[0]--cycle); draw (U[0]--V[0],dashed); draw (W[0]--X[0],dashed); draw (Y[0]--Z[0],dashed); draw (U[1]--V[1]--W[1]--X[1]--Y[1]--Z[1]--cycle); draw (U[1]--A[1]--V[1],dashed); draw (W[1]--C[1]--X[1]); draw (Y[1]--B[1]--Z[1]); dot("$A$",A[0],N); dot("$B$",B[0],SE); dot("$C$",C[0],SW); dot("$U$",U[0],NE); dot("$V$",V[0],NW); dot("$W$",W[0],NW); dot("$X$",X[0],S); dot("$Y$",Y[0],S); dot("$Z$",Z[0],NE); dot(A[1]); dot(B[1]); dot(C[1]); dot("$U$",U[1],NE); dot("$V$",V[1],NW); dot("$W$",W[1],NW); dot("$X$",X[1],dir(-70)); dot("$Y$",Y[1],dir(250)); dot("$Z$",Z[1],NE);
