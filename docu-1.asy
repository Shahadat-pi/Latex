if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="docu-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

/* Create two human-readable files, each containing 40 random numbers between 0 and 1. */
file fout1 = output("torus_points_type1.txt");
file fout2 = output("torus_points_type2.txt");
for (int i = 0; i < 20; ++i) {
write(fout1, " ", unitrand(), unitrand());
write(fout1, endl);

write(fout2, " ", unitrand(), unitrand());
write(fout2, endl);
}
close(fout1);
close(fout2);

/************************************/

/* Read the files into arrays of points. */

pair[] type1pts, type2pts;

file type1 = input("torus_points_type1.txt").line();
file type2 = input("torus_points_type2.txt").line();

real[] temp;
while(!eof(type1) && !eof(type2)) {
temp = type1;
type1pts.push((temp[0], temp[1]));
temp = type2;
type2pts.push((temp[0], temp[1]));
}
close(type1);
close(type2);

/**********************************/

/* Now, do the actual drawings. */

settings.outformat="png";
settings.render=8;

import graph3;

unitsize(3cm);
triple eye = (10,1,4);
//currentprojection=perspective(2*eye);
currentprojection=orthographic(eye);

int nu = 40, nv = 32;
surface torus = surface(Circle(c=2Y, r=0.6, normal=X, n=nv), c=O, axis=Z, n=nu);
torus.ucyclic(true);
torus.vcyclic(true);

/* The following line is irrelevant unless you want to embed
an interactive image in a pdf file. */
defaultrender=render(merge=true);

draw(torus, surfacepen=emissive(white + opacity(0.6)));

/* Reparametrize over [0,1] x [0,1] */
triple torusPoint(real u, real v) {
return torus.point(nu*u, nv*v);
}
triple torusPoint(pair uv) {
return torusPoint(uv.x, uv.y);
}

pen gridpen = linewidth(0.3pt) + gray;

int n = 40;
for (int i = 0; i < n; ++i) {
real u = i/n;
triple f(real v) {
return torusPoint(u,v);
}
draw(graph(f, 0, 1, n=40, operator..) .. cycle, p=gridpen);
}

n = 20;
for (int i = 0; i < n; ++i) {
real v = i/n;
triple f(real u) {
return torusPoint(u,v);
}
draw(graph(f, 0, 1, n=16, operator..) .. cycle, p=gridpen);
}

/* Make parampath an alias for triple(real). */
typedef triple parampath(real);

parampath _torusGeodesic(pair a, pair b) {
return new triple(real t) {
return torusPoint((1-t)*a + t*b);
};
}
path3 torusGeodesic(pair a, pair b) {
return graph(_torusGeodesic(a,b), 0, 1, n=40, operator..);
}

for (int i = 0; i < type1pts.length; ++i) {
pair a = type1pts[i];
dot(torusPoint(a), heavyblue);
pair b = type2pts[i];
for (int du = -1; du <= 1; ++du) {
for (int dv = -1; dv <= 1; ++dv) {
pair bprime = b + (du,dv);
if (length(bprime-a) < length(b-a)) b = bprime;
}
}
dot(torusPoint(b), heavyred);
draw(torusGeodesic(a,b), 0.1*red + 0.2*blue);
}
