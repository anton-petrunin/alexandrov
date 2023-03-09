input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../lectures}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(10) 
save u,k;
u:=.45cm;
k:=-1.8;

path p[];

z1=(0,1)*u;
z2=z1 rotated 72;
z3=z2 rotated 72;
z4=z3 rotated 72;
z5=z4 rotated 72;

draw z1--z2--z3--z4--z5--cycle;
draw k*z1--k*z2--k*z3--k*z4--k*z5--cycle;
draw k*z1--z4--k*z2--z5--k*z3--z1--k*z4--z2--k*z5--z3--cycle;


endfig;

beginfig(20) 
save u;
u:=.05cm;

path p[];

z1=(-16,4)*u;
z2=(-12,14)*u;
z3=(-7,20)*u;
z4=(2,19)*u;
z5=(10,14)*u;
z6=(14,8)*u;
z7=(10,2)*u;
z8=(3,6)*u;
z9=(-3,3)*u;
z10=(-8,7)*u;
z11=(-4,14)*u;
z12=(3,12)*u;

draw z1--z2--z3--z4--z5--z6-- -z1-- -z2-- -z3-- -z4-- -z5-- -z6--cycle;
draw z1--z10--z2--z11--z4--z12--z5;
draw z3--z11;
draw -z7--z10--z11--z12--z8--z7--z6;
draw z10--z9--z8-- -z9;

draw z1-- -z7--z9-- -z9--z7-- -z1;

draw  -z1-- -z10-- -z2-- -z11-- -z4-- -z12-- -z5;
draw  -z3-- -z11;
draw z7-- -z10-- -z11-- -z12-- -z8-- -z7-- -z6;
draw  -z10-- -z9-- -z8--z9;

rimmark(-z9--z9)


endfig;

beginfig(30) 
save u;
u:=.7cm;

z0=origin;
z1=(2.2,1.3)*u;
z2=(3.3,2.6)*u;
z3=(3,5)*u;
z.1=(-1.8,3)*u;
z.2=(-1,5)*u;

z.x=(5,0)*u;
z.y=(0,5.8)*u;

z.b1=whatever [z1,z2]=whatever[z0,z.x];
z.b2=whatever [z2,z3]=whatever[z0,z.x];
z.c=whatever [z.2,z3]=whatever [origin,z.y];

labelarcsprof(z.x, z0, z1, 10, 10, btex {\small $\sigma_1$} etex);
labelarcsprof(z.x, z.b1, z2, 10, 10, btex {\small $\sigma_2$} etex);
labelarcsprof(z.x, z.b2, z3, 10, 10, btex {\small $\sigma_3$} etex);
mark_rt_angle(z.y, z.c, z3);


draw z.2--z.1--z0--z1--z2--z3 pensemibold;
drawarrow (-2,0)*u--z.x;
drawarrow (0,-.4)*u--z.y;
draw z1--z1 yscaled 0 dashed evenly;
draw z2--z2 yscaled 0 dashed evenly;
draw z3--z3 yscaled 0 dashed evenly;
draw z.1--z.1 yscaled 0 dashed evenly;
draw z.2--z.2 yscaled 0 dashed evenly;

draw z.b1--z1 penhair;
draw z.b2--z2 penhair;
draw z.2--z3 penhair;

dOt z0,z1,z2,z3,z.1,z.2;

label.top(btex $a_3$ etex, z3);
label.rt(btex $a_2$ etex, z2);
whitelabel.lrt(btex $a_1$ etex, z1);
whitelabel.bot(btex $a_0$ etex, z0);
label.lft(btex $a_{-1}$ etex, z.1);
label.top(btex $a_{-2}$ etex, z.2);

endfig;


beginfig(40) 
save u;
u:=1cm;

z.v=origin;
z.a1=(-.8,-1)*u;
z.a2=(0,-1.2)*u;
z.a3=(.6,-1.1)*u;
z.a4=(1.2,.3)*u;
z.a5=(-.2,.5)*u;
z.a6=(-.7,.2)*u;
z.a=.4[z.a1,z.a6];
z.b=.5[z.a3,z.a4];

draw z.v--z.a1;
draw z.v--z.a2;
draw z.v--z.a3;
draw z.v--z.a4;
draw z.v--z.a5;
draw z.v--z.a6;
draw z.v--z.a dashed evenly;
draw z.v--z.b dashed evenly;
draw z.a1--z.a2--z.a3--z.a4--z.a5--z.a6--cycle;

dOt z.v,z.a1,z.a2,z.a3,z.a4,z.a5,z.a6,z.a,z.b;


whitelabel(btex ${+}$ etex, .5[z.v,z.a1]);
whitelabel(btex ${+}$ etex, .5[z.v,z.a2]);
whitelabel(btex ${+}$ etex, .5[z.v,z.a3]);
whitelabel(btex ${-}$ etex, .5[z.v,z.a4]);
whitelabel(btex ${-}$ etex, .5[z.v,z.a5]);
whitelabel(btex ${-}$ etex, .5[z.v,z.a6]);
label.lft(btex $a_0=a$ etex, z.a);
label.rt(btex $b=a_4$ etex, z.b);
label.llft(btex $a_1$ etex, z.a1);
label.bot(btex $a_2$ etex, z.a2);
label.lrt(btex $a_3$ etex, z.a3);
endfig;


beginfig(50) 
save u;
u:=1cm;

path p[];

z.v=origin;
z.a=(-1,-1)*u;
z.b=(1.5,-1)*u;
z.aa=-z.a zscaled (.8,-.3);
z.bb=-z.b zscaled (.7,.3);

z.shift=(5,0)*u;

draw z.b-- -z.b-- z.a--z.b-- z.aa -- -z.b; 
draw z.a--z.v-- z.aa dashed evenly;
draw (z.a-- -z.a-- z.b--z.a-- z.bb -- -z.a) shifted z.shift; 
draw (z.b--z.v-- z.bb) shifted z.shift dashed evenly;

dOt z.v, z.v +z.shift;

label.top(btex $v$ etex, z.v);
label.top(btex $v'$ etex, z.v +z.shift);

whitelabel(btex ${+}$ etex, .5[z.v,z.b]);
whitelabel(btex ${+}$ etex, .5[z.v,-z.b]);
whitelabel(btex ${-}$ etex, .5[z.v,z.a]);
whitelabel(btex ${-}$ etex, .5[z.v,z.aa]);
endfig;

beginfig(615) 
save u;
u:=2cm;

z.p=origin;
z.x=(1,1)*u;
z.z=(1.2,-.8)*u;
z.y=.5[z.x,z.z];

labelarcsprof(z.x, z.p, z.y, 10, 26, btex $=\alpha^{23}+\eps$ etex rotated (.5*(angle(z.y-z.p)+angle(z.x-z.p))));
labelarcsprof2(z.y, z.p, z.z, 10, 25, btex $=\alpha^{12}+\eps$ etex rotated (.5*(angle(z.y-z.p)+angle(z.z-z.p))));

draw ddline(z.p,z.x)(0,.2);
draw ddline(z.p,z.y)(0,.2);
draw ddline(z.p,z.z)(0,.2);
draw z.x--z.z;

dOt z.p,z.x,z.y,z.z;

whitelabel(btex $t$ etex rotated angle(z.x-z.p), .5[z.p,z.x]+(0,-2)); 
whitelabel(btex $s(t,\tau)$ etex rotated angle(z.y-z.p), .7[z.p,z.y]+(0,1)); 
whitelabel(btex $\tau$ etex rotated angle(z.z-z.p), .5[z.p,z.z]);
endfig;

beginfig(700) 
save u;
u:=1cm;

z.a=(0,0)*u;
z.b=(1,0)*u;

save p;
path p[];

p1=circle(z.a,z.b-z.a);
p2=circle(z.b,z.a-z.b);

draw p1;
draw p2;

hatchfill p1 withcolor (77, 1mm, -.5bp);
hatchfill p2 withcolor (177, 1mm, -.5bp);

label.top(btex $\spc{M}_4$ etex, z.b rotatedabout(z.a,60)+(0,2));
whitelabel(btex $\spc{E}_4$ etex, .5[z.a,z.b]);
whitelabel(btex $\spc{P}_4$ etex, 1.5[z.a,z.b]);
whitelabel(btex $\spc{N}_4$ etex, (-.5)[z.a,z.b]);
endfig;


beginfig(710) 
save u;
u:=1cm;

z.a=(0,0)*u;
z.b=(1,0)*u;
z.c=(.4,1.1)*u;
z.d=(.55,.25)*u;

z.a1=(2,0)*u;
z.b1=(3,0)*u;
z.c1=(2.1,.9)*u;
z.d1=(2.95,1.05)*u;

draw z.a--z.b--z.c--z.d--cycle;
draw z.a--z.c;
draw z.b--z.d;

draw z.a1--z.b1--z.c1--z.d1--cycle;
draw z.a1--z.c1;
draw z.b1--z.d1;

dOt z.a,z.b,z.c,z.d,z.a1,z.b1,z.c1,z.d1;
endfig;

beginfig(730) 
save u;
u:=1.4cm;

z.p=(0,0)*u;
z.x=(.2,1)*u;
z.y=(1.2,.1)*u;
z.z=.9[z.p,.4[z.x,z.y]];

draw z.x..z.z..z.y;
draw z.p{.1,1}..z.x;
draw z.p{1,.1}..z.y;
draw z.p{.5,.5}..z.z;

dOt z.x,z.y,z.z,z.p;

label.top(btex $x$ etex, z.x);
label.rt(btex $y$ etex, z.y);
label.urt(btex $z$ etex, z.z);
label.llft(btex $p$ etex, z.p);

endfig;

beginfig(740) 
save u;
u:=1.4cm;

z.p=(0,0)*u;
z.x=(.2,1)*u;
z.y=(1.2,.1)*u;
z.z=.4[z.x,z.y];
z.yy=z.y rotatedabout(z.z,-20);

draw z.x--z.y;
draw z.p--z.x;
draw z.p--z.y dashed evenly;
draw z.p--z.z;
draw z.p--z.yy--z.z;

dOt z.x,z.y,z.z,z.p,z.yy;

label.top(btex $\tilde x$ etex, z.x);
label.rt(btex $\tilde y$ etex, z.y);
label.bot(btex $\tilde y'$ etex, z.yy);
label.urt(btex $\tilde z$ etex, z.z);
label.llft(btex $\tilde p$ etex, z.p);

endfig;

beginfig(750) 
save u;
u:=1.4cm;

z.p=(0,0)*u;
z.x=(.2,1)*u;
z.y=(1.2,.1)*u;
z.xx=.4[z.p,z.x];
z.yy=.3[z.p,z.y];

draw z.p--z.y;
draw z.p--z.x;
draw z.xx--z.yy;

dOt z.x,z.y,z.p,z.xx,z.yy;

label.top(btex $x$ etex, z.x);
label.rt(btex $y$ etex, z.y);
label.bot(btex $\bar y$ etex, z.yy);
label.lft(btex $\bar x$ etex, z.xx);
label.llft(btex $p$ etex, z.p);

endfig;

beginfig(1010) 
save u;
u:=1cm;

path p[];

z.a=origin;
z.b=(2,0)*u;
z.d=(0,1)*u;
z.c=z.b+z.d;

fill z.a--z.b--z.c--z.d--cycle withcolor .8;
draw z.a--z.b--z.c--z.d--cycle;
draw .5[z.a,z.b]--.5[z.b,z.c]--.5[z.c,z.d]--.5[z.d,z.a]--cycle dashed evenly;
draw .5[z.a,z.b]--.5[z.c,z.d] dashed evenly;

Dot z.a,z.b,z.c,z.d,.5[z.a,z.b],.5[z.b,z.c],.5[z.c,z.d],.5[z.d,z.a];

drawdblarrow (.25[z.a,z.b]{down}..tension 1.4..(.75)[z.a,z.b]{up}) shifted (0,-3);
drawdblarrow (.25[z.b,z.c]{right}..tension 1.4..(.75)[z.b,z.c]{left}) shifted (3,0);
drawdblarrow (.25[z.c,z.d]{up}..tension 1.4..(.75)[z.c,z.d]{down}) shifted (0,3);
drawdblarrow (.25[z.d,z.a]{left}..tension 1.4..(.75)[z.d,z.a]{right}) shifted (-3,0);

endfig;

end
