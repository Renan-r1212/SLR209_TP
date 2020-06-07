BASEPLOTPATH=../plots
BASEGRAPHPATH=../plots/graphs
PLOTGRAPHPATH=graphPathFile_throughputXthreads.txt
PLOTDATAPATH_JIT_ON=plotDataPath_throughputXthreads_JIT-on.txt
PLOTDATAPATH_JIT_OFF=plotDataPath_throughputXthreads_JIT-off.txt
DATACONTAINER=throughputXthreads_plotdata/
GRAPHSCONTAINER=throughputXthreads_graphs/

rm -rf $PLOTDATAPATH_JIT_ON $PLOTDATAPATH_JIT_OFF $BASEPLOTPATH/$DATACONTAINER $BASEGRAPHPATH/$GRAPHSCONTAINER && mkdir $BASEPLOTPATH/$DATACONTAINER $BASEGRAPHPATH/$GRAPHSCONTAINER

for JIT in JIT-on JIT-off
do 
    mkdir $BASEPLOTPATH/$DATACONTAINER/$JIT
    for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
    do
        mkdir $BASEPLOTPATH/$DATACONTAINER/$JIT/$ALG
        for LIST_SIZE in 1000 8000
        do        
            mkdir $BASEPLOTPATH/$DATACONTAINER/$JIT/$ALG/plot_LISTSIZE_$LIST_SIZE && touch $BASEPLOTPATH/$DATACONTAINER/$JIT/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt
            if [ $JIT == JIT-on ]
            then
                echo $BASEPLOTPATH/$DATACONTAINER/$JIT/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> $PLOTDATAPATH_JIT_ON
            else
                echo $BASEPLOTPATH/$DATACONTAINER/$JIT/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> $PLOTDATAPATH_JIT_OFF
            fi
            
        done
    done
done

for JIT in JIT-on JIT-off
do  
    mkdir $BASEGRAPHPATH/$GRAPHSCONTAINER/$JIT
    for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
    do
        mkdir $BASEGRAPHPATH/$GRAPHSCONTAINER/$JIT/$ALG/ && echo $BASEGRAPHPATH/$GRAPHSCONTAINER/$JIT/$ALG/ >> $PLOTGRAPHPATH
    done
done

echo Plot and Graphs environments deployed
