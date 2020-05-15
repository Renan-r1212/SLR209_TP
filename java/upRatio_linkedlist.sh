mkdir upRatio
rm -rf simuDataPath.txt
CONTAINER=upRatio

for FILE in 1
do
    mkdir $CONTAINER/update_compare_$FILE/ 
    for ALG in CoarseGrainedListBasedSet
    do
	mkdir $CONTAINER/update_compare_$FILE/$ALG
	for LIST_SIZE in 1000 
	do
	    mkdir $CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE
	    for UPDATE_RATIO in 10 100
	    do
		 mkdir $CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO
 		for THREADS in 1 4 8 12
		do
                    LIST_RANGE=$((LIST_SIZE * 2))
                    java -cp bin contention.benchmark.Test -b linkedlists.lockbased.$ALG -W 0 -d 2000 -t $THREADS -u $UPDATE_RATIO -i $LIST_SIZE -r $LIST_RANGE > $CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO/$LIST_SIZE"_"$UPDATE_RATIO"_"$ALG"_"$THREADS"_"$LIST_RANGE.txt
		    echo "$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO/$LIST_SIZE"_"$UPDATE_RATIO"_"$ALG"_"$THREADS"_"$LIST_RANGE.txt" >> simuDataPath.txt
                done
            done
        done
    done
done
