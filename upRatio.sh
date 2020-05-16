CONTAINER=upRatio
SIMUPATHFILE=simuDataPath.txt
PROGBASEDIR=../plot/PlotFileDeploy

rm -rf $PROGBASEDIR/$CONTAINER $PROGBASEDIR/$SIMUPATHFILE && mkdir $PROGBASEDIR/$CONTAINER && touch $PROGBASEDIR/$SIMUPATHFILE

for FILE in 1 2 3 4 5
do
    mkdir  $PROGBASEDIR/$CONTAINER/update_compare_$FILE/ 
    for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
    do
	mkdir $PROGBASEDIR/$CONTAINER/update_compare_$FILE/$ALG
	for LIST_SIZE in 1000 2000 5000 8000 10000 12000 15000 20000
	do
	    mkdir $PROGBASEDIR/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE
	    for UPDATE_RATIO in 0 10 100
	    do
		 mkdir $PROGBASEDIR/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO
 		for THREADS in 1 4 8 12
		do
                    LIST_RANGE=$((LIST_SIZE * 2))
                    java -cp bin contention.benchmark.Test -b linkedlists.lockbased.$ALG -W 0 -d 2000 -t $THREADS -u $UPDATE_RATIO -i $LIST_SIZE -r $LIST_RANGE > $PROGBASEDIR/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO/$LIST_SIZE"_"$UPDATE_RATIO"_"$ALG"_"$THREADS"_"$LIST_RANGE.txt
		   			echo "$PROGBASEDIR/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO/$LIST_SIZE"_"$UPDATE_RATIO"_"$ALG"_"$THREADS"_"$LIST_RANGE.txt" >> $PROGBASEDIR/$SIMUPATHFILE
                done
            done
        done
    done
done


for FILE in 1 2 3 4 5
do
    mkdir $PROGBASEDIR/$CONTAINER/update_compare_$FILE/ 
    for ALG in LazySkipList
    do
	mkdir $PROGBASEDIR/$CONTAINER/update_compare_$FILE/$ALG
	for LIST_SIZE in 1000 2000 5000 8000 10000 12000 15000 20000
	do
	    mkdir $PROGBASEDIR/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE
	    for UPDATE_RATIO in 0 10 100
	    do
		 mkdir $PROGBASEDIR/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO
 		for THREADS in 1 4 8 12
		do
                    LIST_RANGE=$((LIST_SIZE * 2))
                    java -cp bin contention.benchmark.Test -b skiplists.lockbased.$ALG -W 0 -d 2000 -t $THREADS -u $UPDATE_RATIO -i $LIST_SIZE -r $LIST_RANGE > $PROGBASEDIR/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO/$LIST_SIZE"_"$UPDATE_RATIO"_"$ALG"_"$THREADS"_"$LIST_RANGE.txt
		   			echo "$PROGBASEDIR/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO/$LIST_SIZE"_"$UPDATE_RATIO"_"$ALG"_"$THREADS"_"$LIST_RANGE.txt" >> $PROGBASEDIR/$SIMUPATHFILE
                done
            done
        done
    done
done
