set terminal epslatex size 10cm,6cm font ',11' color

set key box samplen 2 height .5
set grid

set ylabel '$i$ /[mA]'
set xlabel '$u$ /[V]'

set format xy '$%g$'
set decimalsign ','

#set ytic 0,.1,.4

set output 'LED.tex'

set key t l width 4

fil='LED.tsv'

R=1060

plot [0:6][-.05:4] \
fil using 1:(1e3*$2) with points lc 0 pt 1 ps 2 title 'Mätdata',\
(x-1.9)*1e3/R with lines lt 1 title 'Anpassning'

set out
