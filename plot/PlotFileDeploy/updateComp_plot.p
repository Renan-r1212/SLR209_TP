set terminal png size 1200, 600

set form y "%e"

set xlabel "Number of threads"
set ylabel "Throughput (ops/s)"
set grid

####
# Throughput x Threads
####

## JIT-on

#CoarseGrainedListBasedSet

#100
set output '../plots/graphs/throughputXthreads_graphs/JIT-on/CoarseGrainedListBasedSet/100_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 100"
plot "../plots/throughputXthreads_plotdata/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughputXthreads_plotdata/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughputXthreads_plotdata/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:4:xtic(1) title "25" with linespoints lt 9 lc 6, "../plots/throughputXthreads_plotdata/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:5:xtic(1) title "75" with linespoints lt 2 lc 3, "../plots/throughputXthreads_plotdata/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:6:xtic(1) title "100" with linespoints lt 9 lc 8 

#500
set output '../plots/graphs/throughputXthreads_graphs/JIT-on/CoarseGrainedListBasedSet/500_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 500"
plot "../plots/throughputXthreads_plotdata/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughputXthreads_plotdata/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughputXthreads_plotdata/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:4:xtic(1) title "25" with linespoints lt 9 lc 6, "../plots/throughputXthreads_plotdata/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:5:xtic(1) title "75" with linespoints lt 2 lc 3, "../plots/throughputXthreads_plotdata/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:6:xtic(1) title "100" with linespoints lt 9 lc 8 

#HandsOverHandsSet

#100
set output '../plots/graphs/throughputXthreads_graphs/JIT-on/HandsOverHandsSet/100_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 100"
plot "../plots/throughputXthreads_plotdata/JIT-on/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughputXthreads_plotdata/JIT-on/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughputXthreads_plotdata/JIT-on/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:4:xtic(1) title "25" with linespoints lt 9 lc 6, "../plots/throughputXthreads_plotdata/JIT-on/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:5:xtic(1) title "75" with linespoints lt 2 lc 3, "../plots/throughputXthreads_plotdata/JIT-on/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:6:xtic(1) title "100" with linespoints lt 9 lc 8 

#500
set output '../plots/graphs/throughputXthreads_graphs/JIT-on/HandsOverHandsSet/500_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 500"
plot "../plots/throughputXthreads_plotdata/JIT-on/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughputXthreads_plotdata/JIT-on/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughputXthreads_plotdata/JIT-on/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:4:xtic(1) title "25" with linespoints lt 9 lc 6, "../plots/throughputXthreads_plotdata/JIT-on/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:5:xtic(1) title "75" with linespoints lt 2 lc 3, "../plots/throughputXthreads_plotdata/JIT-on/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:6:xtic(1) title "100" with linespoints lt 9 lc 8 


## JIT-off

#CoarseGrainedListBasedSet

#100
set output '../plots/graphs/throughputXthreads_graphs/JIT-off/CoarseGrainedListBasedSet/100_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 100"
plot "../plots/throughputXthreads_plotdata/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughputXthreads_plotdata/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughputXthreads_plotdata/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:4:xtic(1) title "25" with linespoints lt 9 lc 6, "../plots/throughputXthreads_plotdata/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:5:xtic(1) title "75" with linespoints lt 2 lc 3, "../plots/throughputXthreads_plotdata/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:6:xtic(1) title "100" with linespoints lt 9 lc 8 

#500
set output '../plots/graphs/throughputXthreads_graphs/JIT-off/CoarseGrainedListBasedSet/500_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 500"
plot "../plots/throughputXthreads_plotdata/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughputXthreads_plotdata/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughputXthreads_plotdata/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:4:xtic(1) title "25" with linespoints lt 9 lc 6, "../plots/throughputXthreads_plotdata/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:5:xtic(1) title "75" with linespoints lt 2 lc 3, "../plots/throughputXthreads_plotdata/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:6:xtic(1) title "100" with linespoints lt 9 lc 8 

#HandsOverHandsSet

#100
set output '../plots/graphs/throughputXthreads_graphs/JIT-off/HandsOverHandsSet/100_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 100"
plot "../plots/throughputXthreads_plotdata/JIT-off/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughputXthreads_plotdata/JIT-off/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughputXthreads_plotdata/JIT-off/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:4:xtic(1) title "25" with linespoints lt 9 lc 6, "../plots/throughputXthreads_plotdata/JIT-off/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:5:xtic(1) title "75" with linespoints lt 2 lc 3, "../plots/throughputXthreads_plotdata/JIT-off/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:6:xtic(1) title "100" with linespoints lt 9 lc 8 

#500
set output '../plots/graphs/throughputXthreads_graphs/JIT-off/HandsOverHandsSet/500_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 500"
plot "../plots/throughputXthreads_plotdata/JIT-off/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughputXthreads_plotdata/JIT-off/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughputXthreads_plotdata/JIT-off/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:4:xtic(1) title "25" with linespoints lt 9 lc 6, "../plots/throughputXthreads_plotdata/JIT-off/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:5:xtic(1) title "75" with linespoints lt 2 lc 3, "../plots/throughputXthreads_plotdata/JIT-off/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:6:xtic(1) title "100" with linespoints lt 9 lc 8 


####
# Throughput x Update Ratio
####
set xlabel "Update Ratio"

## JIT-on

#CoarseGrainedListBasedSet

#100
set output '../plots/graphs/throughputXupRatio_graphs/linkedlist/JIT-on/CoarseGrainedListBasedSet/100_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 100"
plot "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:2:xtic(1) title "1" with linespoints lt 7 lc 7, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:3:xtic(1) title "2" with linespoints lt 5 lc 28, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:4:xtic(1) title "4" with linespoints lt 9 lc 6, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:5:xtic(1) title "8" with linespoints lt 2 lc 3, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:6:xtic(1) title "16" with linespoints lt 9 lc 8, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:7:xtic(1) title "32" with linespoints lt 4 lc 12

#500
set output '../plots/graphs/throughputXupRatio_graphs/linkedlist/JIT-on/CoarseGrainedListBasedSet/500_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 500"
plot "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:2:xtic(1) title "1" with linespoints lt 7 lc 7, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:3:xtic(1) title "2" with linespoints lt 5 lc 28, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:4:xtic(1) title "4" with linespoints lt 9 lc 6, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:5:xtic(1) title "8" with linespoints lt 2 lc 3, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:6:xtic(1) title "16" with linespoints lt 9 lc 8, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:7:xtic(1) title "32" with linespoints lt 4 lc 12


#HandsOverHandsSet

#100       
set output '../plots/graphs/throughputXupRatio_graphs/linkedlist/JIT-on/HandsOverHandsSet/100_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 100"
plot "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:2:xtic(1) title "1" with linespoints lt 7 lc 7, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:3:xtic(1) title "2" with linespoints lt 5 lc 28, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:4:xtic(1) title "4" with linespoints lt 9 lc 6, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:5:xtic(1) title "8" with linespoints lt 2 lc 3, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:6:xtic(1) title "16" with linespoints lt 9 lc 8, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:7:xtic(1) title "32" with linespoints lt 4 lc 12

#500
set output '../plots/graphs/throughputXupRatio_graphs/linkedlist/JIT-on/HandsOverHandsSet/500_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 500"
plot "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:2:xtic(1) title "1" with linespoints lt 7 lc 7, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:3:xtic(1) title "2" with linespoints lt 5 lc 28, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:4:xtic(1) title "4" with linespoints lt 9 lc 6, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:5:xtic(1) title "8" with linespoints lt 2 lc 3, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:6:xtic(1) title "16" with linespoints lt 9 lc 8, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-on/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:7:xtic(1) title "32" with linespoints lt 4 lc 12

## JIT-off

#CoarseGrainedListBasedSet

#100       
set output '../plots/graphs/throughputXupRatio_graphs/linkedlist/JIT-off/CoarseGrainedListBasedSet/100_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 100"
plot "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:2:xtic(1) title "1" with linespoints lt 7 lc 7, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:3:xtic(1) title "2" with linespoints lt 5 lc 28, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:4:xtic(1) title "4" with linespoints lt 9 lc 6, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:5:xtic(1) title "8" with linespoints lt 2 lc 3, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:6:xtic(1) title "16" with linespoints lt 9 lc 8, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_100/plot.txt" using 1:7:xtic(1) title "32" with linespoints lt 4 lc 12

#500
set output '../plots/graphs/throughputXupRatio_graphs/linkedlist/JIT-off/CoarseGrainedListBasedSet/500_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 500"
plot "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:2:xtic(1) title "1" with linespoints lt 7 lc 7, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:3:xtic(1) title "2" with linespoints lt 5 lc 28, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:4:xtic(1) title "4" with linespoints lt 9 lc 6, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:5:xtic(1) title "8" with linespoints lt 2 lc 3, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:6:xtic(1) title "16" with linespoints lt 9 lc 8, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/CoarseGrainedListBasedSet/plot_LISTSIZE_500/plot.txt" using 1:7:xtic(1) title "32" with linespoints lt 4 lc 12


#HandsOverHandsSet

#100       
set output '../plots/graphs/throughputXupRatio_graphs/linkedlist/JIT-off/HandsOverHandsSet/100_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 100"
plot "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:4:xtic(1) title "25" with linespoints lt 9 lc 6, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:5:xtic(1) title "75" with linespoints lt 2 lc 3, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:6:xtic(1) title "100" with linespoints lt 9 lc 8, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:7:xtic(1) title "100" with linespoints lt 4 lc 12

#500
set output '../plots/graphs/throughputXupRatio_graphs/linkedlist/JIT-off/HandsOverHandsSet/500_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 500"
plot "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:4:xtic(1) title "25" with linespoints lt 9 lc 6, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:5:xtic(1) title "75" with linespoints lt 2 lc 3, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:6:xtic(1) title "100" with linespoints lt 9 lc 8, "../plots/throughputXupRatio_plotdata/linkedlist/JIT-off/HandsOverHandsSet/plot_LISTSIZE_500/plot.txt" using 1:7:xtic(1) title "100" with linespoints lt 4 lc 12

###
# C++
###

####
# Throughput x Threads
####
set xlabel "Number of threads"

#HandsOverHandsSet

#100
set output '../plots/graphs/C_throughputXthreads_graphs/HandsOverHandsSet/100_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 100 - C++"
plot "../plots/C_throughputXthreads_plotdata/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/C_throughputXthreads_plotdata/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/C_throughputXthreads_plotdata/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#1000
set output '../plots/graphs/C_throughputXthreads_graphs/HandsOverHandsSet/1000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 1000 - C++"
plot "../plots/C_throughputXthreads_plotdata/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/C_throughputXthreads_plotdata/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/C_throughputXthreads_plotdata/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#8000
set output '../plots/graphs/C_throughputXthreads_graphs/HandsOverHandsSet/8000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 8000 - C++"
plot "../plots/C_throughputXthreads_plotdata/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/C_throughputXthreads_plotdata/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/C_throughputXthreads_plotdata/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

####
# Throughput x Update Ratio
####
set xlabel "Update ratio"

#HandsOverHandsSet

#100
set output '../plots/graphs/C_throughputXupRatio_graphs/linkedlist/HandsOverHandsSet/100_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 100 - C++"
plot "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:2:xtic(1) title "1" with linespoints lt 7 lc 7, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:3:xtic(1) title "2" with linespoints lt 5 lc 28, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:4:xtic(1) title "4" with linespoints lt 9 lc 6, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:5:xtic(1) title "8" with linespoints lt 2 lc 3, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:6:xtic(1) title "16" with linespoints lt 9 lc 8, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_100/plot.txt" using 1:7:xtic(1) title "32" with linespoints lt 4 lc 12

#1000
set output '../plots/graphs/C_throughputXupRatio_graphs/linkedlist/HandsOverHandsSet/1000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 1000 - C++"
plot "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:2:xtic(1) title "1" with linespoints lt 7 lc 7, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:3:xtic(1) title "2" with linespoints lt 5 lc 28, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:4:xtic(1) title "4" with linespoints lt 9 lc 6, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:5:xtic(1) title "8" with linespoints lt 2 lc 3, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:6:xtic(1) title "16" with linespoints lt 9 lc 8, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:7:xtic(1) title "32" with linespoints lt 4 lc 12

#8000
set output '../plots/graphs/C_throughputXupRatio_graphs/linkedlist/HandsOverHandsSet/8000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 8000 - C++"
plot "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:2:xtic(1) title "1" with linespoints lt 7 lc 7, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:3:xtic(1) title "2" with linespoints lt 5 lc 28, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:4:xtic(1) title "4" with linespoints lt 9 lc 6, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:5:xtic(1) title "8" with linespoints lt 2 lc 3, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:6:xtic(1) title "16" with linespoints lt 9 lc 8, "../plots/C_throughputXupRatio_plotdata/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:7:xtic(1) title "32" with linespoints lt 4 lc 12
