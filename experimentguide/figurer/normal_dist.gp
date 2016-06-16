set terminal epslatex size 10cm,5cm font ',11' color

set key box samplen 1 height .5
set grid

set ylabel '\large$f(x)$'
set xlabel '\large$x$'

set format xy '$%g$'
set decimalsign ','

set ytic 0,.1,.4

set output 'normal_dist.tex'

set key t l width -1.8

m1=0; s1=1
m2=0; s2=2
m3=2; s3=1
m4=0; s4=2

S='\footnotesize '

plot [-6:6][0:.4] \
exp(-(x-m1)**2/(2*s1**2))/(sqrt(2*pi)*s1) title S.'$\mu=0$, $\sigma=1$',\
exp(-(x-m2)**2/(2*s2**2))/(sqrt(2*pi)*s2) title S.'$\mu=0$, $\sigma=2$',\
exp(-(x-m3)**2/(2*s3**2))/(sqrt(2*pi)*s3) title S.'$\mu=2$, $\sigma=1$',\
#exp(-(x-m4)**2/(2*s4**2))/(sqrt(2*pi)*s4) title S.'$\mu=0$, $\sigma=2$',\

set out
