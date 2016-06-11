set terminal epslatex size 12cm,7cm font ',11' color

set key box samplen 2 height .5
set grid

set ylabel '\Large$f(x)$'
set xlabel '\Large$x$'

set ytic 0,.1,.4

set output 'normal_dist.tex'

set key t l width 2

m1=0; s1=1
m2=0; s2=2
m3=2; s3=1
m4=0; s4=2

plot [-6:6][0:.4] \
exp(-(x-m1)**2/(2*s1**2))/(sqrt(2*pi)*s1) title '$\mu=0$, $\sigma=1$',\
exp(-(x-m2)**2/(2*s2**2))/(sqrt(2*pi)*s2) title '$\mu=0$, $\sigma=2$',\
exp(-(x-m3)**2/(2*s3**2))/(sqrt(2*pi)*s3) title '$\mu=2$, $\sigma=1$',\
#exp(-(x-m4)**2/(2*s4**2))/(sqrt(2*pi)*s4) title '$\mu=0$, $\sigma=2$',\

set out
