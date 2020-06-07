BASEPLOTPATH=../plots
BASEGRAPHPATH=../plots/graphs
PLOTFILEPATH_JIT_ON=plotDataPath_throughputXupRatio_JIT-on.txt
PLOTFILEPATH_JIT_OFF=plotDataPath_throughputXupRatio_JIT-off.txt
PLOTGRAPHPATH=graphPathFile_throughputXupratio.txt
PLOTCONTAINER=throughput_x_upratio_plotFiles
GRAPHSCONTAINER=throughput_x_upratio_graphs

rm -rf $PLOTGRAPHPATH $PLOTFILEPATH_JIT_OFF $PLOTFILEPATH_JIT_ON $BASEPLOTPATH/$PLOTCONTAINER $BASEGRAPHPATH/$GRAPHSCONTAINER && mkdir $BASEPLOTPATH/$PLOTCONTAINER $BASEGRAPHPATH/$GRAPHSCONTAINER
 
for DATACONTAINER in linkedlist
do 
    mkdir $BASEPLOTPATH/$PLOTCONTAINER/$DATACONTAINER
    for JIT in JIT-on JIT-off
    do
        mkdir $BASEPLOTPATH/$PLOTCONTAINER/$DATACONTAINER/$JIT
        for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
        do
            mkdir $BASEPLOTPATH/$PLOTCONTAINER/$DATACONTAINER/$JIT/$ALG
            for LIST_SIZE in 1000 8000
            do         
                mkdir $BASEPLOTPATH/$PLOTCONTAINER/$DATACONTAINER/$JIT/$ALG/plot_LISTSIZE_$LIST_SIZE && touch $BASEPLOTPATH/$PLOTCONTAINER/$DATACONTAINER/$JIT/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt
                if [ $JIT == JIT-on ]
                then
                    echo $BASEPLOTPATH/$PLOTCONTAINER/$DATACONTAINER/$JIT/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> $PLOTFILEPATH_JIT_ON
                else
                    echo $BASEPLOTPATH/$PLOTCONTAINER/$DATACONTAINER/$JIT/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> $PLOTFILEPATH_JIT_OFF
                fi
                
            done
        done
    done
done

# Graphics generation environment

for DATACONTAINER in linkedlist
do 
    mkdir $BASEGRAPHPATH/$GRAPHSCONTAINER/$DATACONTAINER
    for JIT in JIT-on JIT-off
    do
        mkdir $BASEGRAPHPATH/$GRAPHSCONTAINER/$DATACONTAINER/$JIT
        for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
        do
            mkdir $BASEGRAPHPATH/$GRAPHSCONTAINER/$DATACONTAINER/$JIT/$ALG && echo $BASEGRAPHPATH/$GRAPHSCONTAINER/$DATACONTAINER/$JIT/$ALG/ >> $PLOTGRAPHPATH
        done
    done
done
echo Full environment deployed
