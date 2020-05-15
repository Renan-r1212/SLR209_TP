mkdir updateResult

for FILE in 4
do
    mkdir updateResult/update_compare_$FILE/ 
    for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
    do
	mkdir updateResult/update_compare_$FILE/$ALG
	for LIST_SIZE in 1000 2000 5000 8000 
	do
	    mkdir updateResult/update_compare_$FILE/$ALG/$LIST_SIZE
	    for UPDATE_RATIO in 10 100
	    do
		 mkdir updateResult/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO
		for THREADS in 1 4 8 12
		do

                
                    LIST_RANGE=$((LIST_SIZE * 2))
                    java -cp bin contention.benchmark.Test -b linkedlists.lockbased.$ALG -W 0 -d 2000 -t $THREADS -u $UPDATE_RATIO -i $LIST_SIZE -r $LIST_RANGE > updateResult/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO/$LIST_SIZE"_"$UPDATE_RATIO"_"$ALG"_"$THREADS"_"$LIST_RANGE.txt
    
                done
            done
        done
    done
done
