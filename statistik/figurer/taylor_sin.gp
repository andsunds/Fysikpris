set terminal epslatex size 12cm,7cm font ',11' color

set key box samplen 2 height .5
set grid

#set ylabel '$y$'
set xlabel '\Large$x$'

set ytic -2,1,2
set xtic -4,1,4

set output 'taylor_sin.tex'

set key width -5  above


plot [-4:4][-2:2] \
sin(x) lt -1 title '$\sin(x)$',\
x lc 1 title '$x$',\
x-x**3/6 lc 2 title '$x - \nicefrac{x^3}{6}$',\
x-x**3/6+x**5/120 lc 3 title '$x - \nicefrac{x^3}{6} + \nicefrac{x^5}{120}$'


set out
