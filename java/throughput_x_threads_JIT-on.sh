CONTAINER=simu_throughputXThreads_JIT-on
SIMUPATHFILE=simuDataPath_JIT-on.txt
BASEPLOTPATH=../plot/PlotFileDeploy

rm -rf $BASEPLOTPATH/$CONTAINER $BASEPLOTPATH/$SIMUPATHFILE && mkdir $BASEPLOTPATH/$CONTAINER && touch $BASEPLOTPATH/$SIMUPATHFILE

# Generates simulation environment
for FILE in 1 2 3 4 5
do
    mkdir $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/
    for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
    do
		mkdir $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/$ALG
		for LIST_SIZE in 100 500
		do
			mkdir $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE
		    	for UPDATE_RATIO in 0 10 25 75 100
		    	do
				mkdir $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO	
            done
        done
    done
done

# Excutes simulations
for FILE in 1 2 3 4 5
do
    for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
    do
		for LIST_SIZE in 100 500
		do
	    	    for UPDATE_RATIO in 0 10 25 75 100
	    	    do 
 					for THREADS in 1 2 4 8 16 32
					do
						LIST_RANGE=$((LIST_SIZE * 2))
                    	if [ $ALG == LazySkipList ]
		    			then
							java -Djava.compiler=NONE -cp bin contention.benchmark.Test -b skiplists.lockbased.$ALG -W 0 -d 2000 -t $THREADS -u $UPDATE_RATIO -i $LIST_SIZE -r $LIST_RANGE > $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO/$ALG"_"$LIST_SIZE"_"$UPDATE_RATIO"_"$THREADS".txt"
		    			elif [ $ALG == CATreeMapAVL ]
		    			then

							java -Djava.compiler=NONE -cp bin contention.benchmark.Test -b trees.lockbased.$ALG -W 0 -d 2000 -t $THREADS -u $UPDATE_RATIO -i $LIST_SIZE -r $LIST_RANGE > $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO/$ALG"_"$LIST_SIZE"_"$UPDATE_RATIO"_"$THREADS".txt"

		    			else
							java -cp bin contention.benchmark.Test -b linkedlists.lockbased.$ALG -W 0 -d 2000 -t $THREADS -u $UPDATE_RATIO -i $LIST_SIZE -r $LIST_RANGE > $BASEPLOTPATH/$CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO/$ALG"_"$LIST_SIZE"_"$UPDATE_RATIO"_"$THREADS".txt"
		   				fi
						echo $CONTAINER/update_compare_$FILE/$ALG/$LIST_SIZE/$UPDATE_RATIO/$ALG"_"$LIST_SIZE"_"$UPDATE_RATIO"_"$THREADS".txt" >> $BASEPLOTPATH/$SIMUPATHFILE                    
                done
            done
        done
    done
done
