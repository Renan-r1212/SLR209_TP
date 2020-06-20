BASEPLOTPATH=../plots
BASEGRAPHPATH=../plots/graphs
PLOTGRAPHPATH=graphPathFile_throughputXthreads.txt
CPLOTGRAPHPATH=C_graphPathFile_throughputXthreads.txt
PLOTDATAPATH_JIT_ON=plotDataPath_throughputXthreads_JIT-on.txt
PLOTDATAPATH_JIT_OFF=plotDataPath_throughputXthreads_JIT-off.txt
DATACONTAINER=throughputXthreads_plotdata/
CDATACONTAINER=C_throughputXthreads_plotdata
CPLOTDATAPATH=C_plotDataPath_throughputXthreads.txt
GRAPHSCONTAINER=throughputXthreads_graphs/
CGRAPHSCONTAINER=C_throughputXthreads_graphs

rm -rf $PLOTDATAPATH_JIT_ON $PLOTDATAPATH_JIT_OFF $CPLOTDATAPATH $CPLOTGRAPHPATH $BASEPLOTPATH/$DATACONTAINER $BASEGRAPHPATH/$GRAPHSCONTAINER $BASEPLOTPATH/$CDATACONTAINER $BASEGRAPHPATH/$CGRAPHSCONTAINER  && mkdir $BASEPLOTPATH/$DATACONTAINER $BASEGRAPHPATH/$GRAPHSCONTAINER $BASEPLOTPATH/$CDATACONTAINER $BASEGRAPHPATH/$CGRAPHSCONTAINER

for JIT in JIT-on JIT-off
do 
    mkdir $BASEPLOTPATH/$DATACONTAINER/$JIT
    for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
    do
        mkdir $BASEPLOTPATH/$DATACONTAINER/$JIT/$ALG
        for LIST_SIZE in 100 500
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

## C++ environment

for ALG in HandsOverHandsSet
do
    mkdir $BASEPLOTPATH/$CDATACONTAINER/$ALG
    for LIST_SIZE in 100 1000 8000
    do        
        mkdir $BASEPLOTPATH/$CDATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE && touch $BASEPLOTPATH/$CDATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt
        echo $BASEPLOTPATH/$CDATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> $CPLOTDATAPATH
    done
done

 

for ALG in HandsOverHandsSet
do
    mkdir $BASEGRAPHPATH/$CGRAPHSCONTAINER/$ALG/ && echo $BASEGRAPHPATH/$CGRAPHSCONTAINER/$ALG/ >> $CPLOTGRAPHPATH
done


echo Plot and Graphs environments deployed
