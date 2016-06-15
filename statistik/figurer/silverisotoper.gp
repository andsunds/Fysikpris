set terminal epslatex font ',11' size 12cm,7cm color

#set format xy "$%g$"

##### höjd,bredd
set size 1,1
# Förklaringsrutan, man kan behöva ställa in width för att den ska bli lagom bred
set key samplen 2 box height .4 #outside
set grid #Sätter på rutnät
set decimalsign ','#Bestämmer decimalseparator


# #################### plottar ####################
set output "silverisotoper.tex"
set key top right width -3
set logscale y
set format y "$10^{%L}$"
#set ytics 0,0.2,1
#set xtics 0,0.2,1
set xlabel '$t$ /[min.]'
set ylabel '$A$ /[sönderfall/min]'

fil="silverisotoper.tsv"
#### x-axel     y-axel
plot [0:15] [3e1:1e4] fil using 1:2 with points \
lt 1 lc rgb "black" title 'Uppmätt data',\
NaN with lines \
lt 0 lw 3 lc rgb "red" title 'Anpassing $^{108}$Ag',\
fil using 3:4 with points \
lt 2 lc rgb "black" title 'Korrigerad data',\
exp(9.3535897e+00 -x*1.7413768e+00) with lines \
lt 5 lw 1 lc rgb "red" title 'Anpassning $^{110}$Ag',\
exp(7.8725468e+00 -x*2.8559425e-01) + exp(9.3535897e+00 -x*1.7413768e+00)\
with lines lt -1 lw 1 lc rgb "grey50" title 'Anpassing tillsammans',\
exp(7.8725468e+00 -x*2.8559425e-01) with lines \
lt 0 lw 3 lc rgb "red" title '',\
