set terminal png size 600,700

set form y "%e"

set xlabel "Number of threads"
set ylabel "Throughput (ops/s)"
set grid

#HandsOverHandsSet
#set output 'graphs/upratio_HandsOverHandsSet.png'
#set title "Performance Analysis - HandsOverHandsSet - LISTSIZE 1000"
#plot "upratio_plot/HandsOverHandsSet/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "upratio_plot/HandsOverHandsSet/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "upratio_plot/HandsOverHandsSet/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#CoarseGrainedListBasedSet
set output 'plots/graphs/CoarseGrained/1000_CoarseGrained.png'
set title "Performance Analysis - CoarseGrainedListBasedSet - LISTSIZE 1000"
plot "plots/linkedList/CoarseGrained/plot_SIZE_1000/plot.txt" using 1:2:xtic(1) title "10" with linespoints lt 7 lc 7, "plots/linkedList/CoarseGrained/plot_SIZE_1000/plot.txt" using 1:3:xtic(1) title "100" with linespoints lt 5 lc 28
