set terminal png size 800, 600

set form y "%e"

set xlabel "Number of threads"
set ylabel "Throughput (ops/s)"
set grid


####
# Throughput x Threads
####

#CoarseGrainedListBasedSet

#1000
set output '../plots/graphs/linkedlist/CoarseGrainedListBasedSet/1000_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 1000"
plot "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_1000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_1000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_1000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#2000
set output '../plots/graphs/linkedlist/CoarseGrainedListBasedSet/2000_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 2000"
plot "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_2000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_2000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_2000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#5000
set output '../plots/graphs/linkedlist/CoarseGrainedListBasedSet/5000_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 5000"
plot "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_5000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_5000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_5000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#8000
set output '../plots/graphs/linkedlist/CoarseGrainedListBasedSet/8000_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 8000"
plot "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_8000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_8000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_8000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#10000
set output '../plots/graphs/linkedlist/CoarseGrainedListBasedSet/10000_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 10000"
plot "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_10000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_10000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_10000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#12000
set output '../plots/graphs/linkedlist/CoarseGrainedListBasedSet/12000_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 12000"
plot "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_12000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_12000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_12000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#15000
set output '../plots/graphs/linkedlist/CoarseGrainedListBasedSet/15000_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 15000"
plot "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_15000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_15000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_15000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#18000
set output '../plots/graphs/linkedlist/CoarseGrainedListBasedSet/18000_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 18000"
plot "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_18000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_18000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_18000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#20000
set output '../plots/graphs/linkedlist/CoarseGrainedListBasedSet/20000_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 20000"
plot "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_20000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_20000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_20000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 


#HandsOverHandsSet

#1000
set output '../plots/graphs/linkedlist/HandsOverHandsSet/1000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 1000"
plot "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#2000
set output '../plots/graphs/linkedlist/HandsOverHandsSet/2000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 2000"
plot "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_2000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_2000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_2000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#5000
set output '../plots/graphs/linkedlist/HandsOverHandsSet/5000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 5000"
plot "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_5000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_5000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_5000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#8000
set output '../plots/graphs/linkedlist/HandsOverHandsSet/8000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 8000"
plot "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#10000
set output '../plots/graphs/linkedlist/HandsOverHandsSet/10000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 10000"
plot "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_10000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_10000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_10000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#12000
set output '../plots/graphs/linkedlist/HandsOverHandsSet/12000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 12000"
plot "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_12000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_12000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_12000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#15000
set output '../plots/graphs/linkedlist/HandsOverHandsSet/15000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 15000"
plot "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_15000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_15000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_15000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#18000
set output '../plots/graphs/linkedlist/HandsOverHandsSet/18000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 18000"
plot "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_18000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_18000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_18000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#20000
set output '../plots/graphs/linkedlist/HandsOverHandsSet/20000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 20000"
plot "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_20000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_20000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/linkedlist/HandsOverHandsSet/plot_LISTSIZE_20000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 


#LazySkipList

#1000
set output '../plots/graphs/skiplists/LazySkipList/1000_LazySkipList.png'
set title "Performance Analysis-LazySkipList-LISTSIZE 1000"
plot "../plots/skiplists/LazySkipList/plot_LISTSIZE_1000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/skiplists/LazySkipList/plot_LISTSIZE_1000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/skiplists/LazySkipList/plot_LISTSIZE_1000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#2000
set output '../plots/graphs/skiplists/LazySkipList/2000_LazySkipList.png'
set title "Performance Analysis-LazySkipList-LISTSIZE 2000"
plot "../plots/skiplists/LazySkipList/plot_LISTSIZE_2000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/skiplists/LazySkipList/plot_LISTSIZE_2000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/skiplists/LazySkipList/plot_LISTSIZE_2000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#5000
set output '../plots/graphs/skiplists/LazySkipList/5000_LazySkipList.png'
set title "Performance Analysis-LazySkipList-LISTSIZE 5000"
plot "../plots/skiplists/LazySkipList/plot_LISTSIZE_5000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/skiplists/LazySkipList/plot_LISTSIZE_5000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/skiplists/LazySkipList/plot_LISTSIZE_5000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#8000
set output '../plots/graphs/skiplists/LazySkipList/8000_LazySkipList.png'
set title "Performance Analysis-LazySkipList-LISTSIZE 8000"
plot "../plots/skiplists/LazySkipList/plot_LISTSIZE_8000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/skiplists/LazySkipList/plot_LISTSIZE_8000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/skiplists/LazySkipList/plot_LISTSIZE_8000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#10000
set output '../plots/graphs/skiplists/LazySkipList/10000_LazySkipList.png'
set title "Performance Analysis-LazySkipList-LISTSIZE 10000"
plot "../plots/skiplists/LazySkipList/plot_LISTSIZE_10000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/skiplists/LazySkipList/plot_LISTSIZE_10000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/skiplists/LazySkipList/plot_LISTSIZE_10000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#12000
set output '../plots/graphs/skiplists/LazySkipList/12000_LazySkipList.png'
set title "Performance Analysis-LazySkipList-LISTSIZE 12000"
plot "../plots/skiplists/LazySkipList/plot_LISTSIZE_12000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/skiplists/LazySkipList/plot_LISTSIZE_12000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/skiplists/LazySkipList/plot_LISTSIZE_12000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#15000
set output '../plots/graphs/skiplists/LazySkipList/15000_LazySkipList.png'
set title "Performance Analysis-LazySkipList-LISTSIZE 15000"
plot "../plots/skiplists/LazySkipList/plot_LISTSIZE_15000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/skiplists/LazySkipList/plot_LISTSIZE_15000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/skiplists/LazySkipList/plot_LISTSIZE_15000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#18000
set output '../plots/graphs/skiplists/LazySkipList/18000_LazySkipList.png'
set title "Performance Analysis-LazySkipList-LISTSIZE 18000"
plot "../plots/skiplists/LazySkipList/plot_LISTSIZE_18000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/skiplists/LazySkipList/plot_LISTSIZE_18000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/skiplists/LazySkipList/plot_LISTSIZE_18000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#20000
set output '../plots/graphs/skiplists/LazySkipList/20000_LazySkipList.png'
set title "Performance Analysis-LazySkipList-LISTSIZE 20000"
plot "../plots/skiplists/LazySkipList/plot_LISTSIZE_20000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/skiplists/LazySkipList/plot_LISTSIZE_20000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/skiplists/LazySkipList/plot_LISTSIZE_20000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 


#CATreeMapAVL

#1000
set output '../plots/graphs/trees/CATreeMapAVL/1000_CATreeMapAVL.png'
set title "Performance Analysis-CATreeMapAVL-LISTSIZE 1000"
plot "../plots/trees/CATreeMapAVL/plot_LISTSIZE_1000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_1000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_1000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#2000
set output '../plots/graphs/trees/CATreeMapAVL/2000_CATreeMapAVL.png'
set title "Performance Analysis-CATreeMapAVL-LISTSIZE 2000"
plot "../plots/trees/CATreeMapAVL/plot_LISTSIZE_2000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_2000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_2000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#5000
set output '../plots/graphs/trees/CATreeMapAVL/5000_CATreeMapAVL.png'
set title "Performance Analysis-CATreeMapAVL-LISTSIZE 5000"
plot "../plots/trees/CATreeMapAVL/plot_LISTSIZE_5000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_5000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_5000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#8000
set output '../plots/graphs/trees/CATreeMapAVL/8000_CATreeMapAVL.png'
set title "Performance Analysis-CATreeMapAVL-LISTSIZE 8000"
plot "../plots/trees/CATreeMapAVL/plot_LISTSIZE_8000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_8000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_8000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#10000
set output '../plots/graphs/trees/CATreeMapAVL/10000_CATreeMapAVL.png'
set title "Performance Analysis-CATreeMapAVL-LISTSIZE 10000"
plot "../plots/trees/CATreeMapAVL/plot_LISTSIZE_10000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_10000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_10000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#12000
set output '../plots/graphs/trees/CATreeMapAVL/12000_CATreeMapAVL.png'
set title "Performance Analysis-CATreeMapAVL-LISTSIZE 12000"
plot "../plots/trees/CATreeMapAVL/plot_LISTSIZE_12000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_12000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_12000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#15000
set output '../plots/graphs/trees/CATreeMapAVL/15000_CATreeMapAVL.png'
set title "Performance Analysis-CATreeMapAVL-LISTSIZE 15000"
plot "../plots/trees/CATreeMapAVL/plot_LISTSIZE_15000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_15000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_15000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#18000
set output '../plots/graphs/trees/CATreeMapAVL/18000_CATreeMapAVL.png'
set title "Performance Analysis-CATreeMapAVL-LISTSIZE 18000"
plot "../plots/trees/CATreeMapAVL/plot_LISTSIZE_18000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_18000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_18000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#20000
set output '../plots/graphs/trees/CATreeMapAVL/20000_CATreeMapAVL.png'
set title "Performance Analysis-CATreeMapAVL-LISTSIZE 20000"
plot "../plots/trees/CATreeMapAVL/plot_LISTSIZE_20000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_20000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/trees/CATreeMapAVL/plot_LISTSIZE_20000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

####
# Throughput x Update Ratio
####

#CoarseGrainedListBasedSet

#1000
set output '../plots/graphs/throughput_x_upratio_graphs/linkedlist/CoarseGrainedListBasedSet/1000_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 1000"
plot "../plots/throughput_x_upratio_plotFiles/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_1000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughput_x_upratio_plotFiles/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_1000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughput_x_upratio_plotFiles/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_1000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#8000
set output '../plots/graphs/throughput_x_upratio_graphs/linkedlist/CoarseGrainedListBasedSet/8000_CoarseGrainedListBasedSet.png'
set title "Performance Analysis-CoarseGrainedListBasedSet-LISTSIZE 8000"
plot "../plots/throughput_x_upratio_plotFiles/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_8000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughput_x_upratio_plotFiles/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_8000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughput_x_upratio_plotFiles/linkedlist/CoarseGrainedListBasedSet/plot_LISTSIZE_8000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 


#HandsOverHandsSet

#1000       
set output '../plots/graphs/throughput_x_upratio_graphs/linkedlist/HandsOverHandsSet/1000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 1000"
plot "../plots/throughput_x_upratio_plotFiles/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughput_x_upratio_plotFiles/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughput_x_upratio_plotFiles/linkedlist/HandsOverHandsSet/plot_LISTSIZE_1000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 

#8000
set output '../plots/graphs/throughput_x_upratio_graphs/linkedlist/HandsOverHandsSet/8000_HandsOverHandsSet.png'
set title "Performance Analysis-HandsOverHandsSet-LISTSIZE 8000"
plot "../plots/throughput_x_upratio_plotFiles/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:2:xtic(1) title "0" with linespoints lt 7 lc 7, "../plots/throughput_x_upratio_plotFiles/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:3:xtic(1) title "10" with linespoints lt 5 lc 28, "../plots/throughput_x_upratio_plotFiles/linkedlist/HandsOverHandsSet/plot_LISTSIZE_8000/plot.txt" using 1:4:xtic(1) title "100" with linespoints lt 9 lc 6 
