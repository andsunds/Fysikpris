set terminal epslatex size 10cm,6cm font ',11' color

set key box samplen 2 height .5
set grid

set ylabel '$h$ /[cm]'
set xlabel '$\left( 2\omega^2 \right)^{-1}$ /[$\unit{s^2}$]'

set format xy '$%g$'
set decimalsign ','

#set ytic 0,.1,.4

set output 'vattenparabel.tex'

set key t l width 4

fil='vattenparabel.tsv'

plot [0:15e-3][0:16] \
9.8e2*x with lines title '$g=\unit[\phantom{1}980]{cm/s^2}$',\
9.4e2*x with lines title '$g=\unit[\phantom{1}940]{cm/s^2}$',\
10.2e2*x with lines title '$g=\unit[1020]{cm/s^2}$',\
fil using 1:(1e2*$2) with points lc 0 pt 1 ps 2 title 'Mätdata',\

set out
