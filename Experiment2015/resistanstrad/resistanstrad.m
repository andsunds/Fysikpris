clc;clf; clear all

i=[0 41.72e-3 .1003 .2505 .3501 .5011 .5601 .61 .70 .80 .85 .90 .95 1.00 1.05 1.10 1.15 1.20 1.28...
    1.30 1.35 1.40 1.45 1.50 1.55 1.60 1.65 1.70 1.75 1.80 1.88];
u=[0 69.7 168.0 419.5 585.9 833 931 1014 1157 1347 1433 1521 1596 1677 1734 1817 1899 ... 
    1973 2119 2150 2234 2315 2401 2477 2567 2656 2736 2828 2905 2988 3137]./100;

x0=162e-3;
x=[188 188 188 189 190 193 194 196 197 199 200 202 203 205 206 208 209 210 212 213 214 ...
    216 217 218 220 222 224 225 226 228 231]*1e-3;
h=x-x0;
d=.50;

delta=h.^2/(2*d);
delta=delta-delta(1);

li=log(i);
ld=log(delta);

%plot(li,ld)
loglog(i,delta)
grid on

%%
clc;clf
p1=2.;
p2=exp(-6.804);

x=linspace(0,1.9);
y=p2*x.^p1;

hold on
plot(i,delta)
plot(x,y, 'r')

%%
clf;clc
l=sqrt(d^2+h.^2);
l0=l(1);
k=13.5e-6;
deltaT=(l-l0)/k;


plot(i,deltaT+21)

%%
clc;clf
a=13.5e-6;
d=.5;
i=[.25 .5 .71 1.00 1.41 1.86];
h=[22 25 31 38 50 64].*1e-3;
h0=0.02;
delta=(h.^2-h0^2)./(2*d);
T=delta./(a*d);

hold on
plot(i,T, '+', 'markersize',15)
grid on

x=linspace(0,2);
y=155.*x.^2;
plot(x,y)

%%
clc;clf
R=18;
Pi=R*i.^2;
s=5.67e-8;A=2*d*pi*2e-4;
Ps=s*A*((T+290).^4-290^4);
figure(1);clf
hold on
plot(i,Pi, '+', 'markersize',15)
plot(i,Ps, 'x', 'markersize',15)

figure(2);clf
plot(i,Ps./Pi)





















