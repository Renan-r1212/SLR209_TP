CONTAINER=simu_throughputXupRatio_JIT-on
SIMUPATHFILE=simuDataPath_throughputXupRatio_JIT-on.txt
BASEPLOTPATH=../plot/PlotFileDeploy


rm -rf $BASEPLOTPATH/$CONTAINER $BASEPLOTPATH/$SIMUPATHFILE && mkdir $BASEPLOTPATH/$CONTAINER && touch $BASEPLOTPATH/$SIMUPATHFILE

# Generates simulation environment
for FILE in 1 2 3 4 5
do
	mkdir $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/
    for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
    do
		mkdir $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/$ALG
		for LIST_SIZE in 1000 8000
		do
            mkdir $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE
            for THREADS in 1 2 4 8 16 32
			do    
                mkdir $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$THREADS"_threads"/
            done
        done
    done
done


# Excutes simulations
for FILE in 1 2 3 4 5
do
    for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
    do
		for LIST_SIZE in 1000 8000
		do
	    	    for UPDATE_RATIO in {0..100..5}
	    	    do 
 					for THREADS in 1 2 4 8 16 32
					do
						LIST_RANGE=$((LIST_SIZE * 2))
						java -cp bin contention.benchmark.Test -b linkedlists.lockbased.$ALG -W 0 -d 2000 -t $THREADS -u $UPDATE_RATIO -i $LIST_SIZE -r $LIST_RANGE > $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$THREADS"_threads"/$ALG"_"$LIST_SIZE"_"$UPDATE_RATIO"_"$THREADS".txt"
						echo $CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$THREADS"_threads"/$ALG"_"$LIST_SIZE"_"$UPDATE_RATIO"_"$THREADS".txt" >> $BASEPLOTPATH/$SIMUPATHFILE                    
                done
            done
        done
    done
done
