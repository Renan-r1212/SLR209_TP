BASEPLOTPATH=../plots
BASEGRAPHPATH=../plots/graphs
PLOTFILEPATH_JIT_ON=plotDataPath_throughputXupRatio_JIT-on.txt
PLOTFILEPATH_JIT_OFF=plotDataPath_throughputXupRatio_JIT-off.txt
CPLOTFILEPATH=C_plotDataPath_throughputXupRatio.txt
PLOTGRAPHPATH=graphPathFile_throughputXupratio.txt
CPLOTGRAPHPATH=C_graphPathFile_throughputXupratio.txt
PLOTCONTAINER=throughputXupRatio_plotdata
CPLOTCONTAINER=C_throughputXupRatio_plotdata
GRAPHSCONTAINER=throughputXupRatio_graphs
CGRAPHSCONTAINER=C_throughputXupRatio_graphs

rm -rf $PLOTGRAPHPATH $PLOTFILEPATH_JIT_OFF $CPLOTFILEPATH $CPLOTGRAPHPATH $PLOTFILEPATH_JIT_ON $BASEPLOTPATH/$PLOTCONTAINER $BASEGRAPHPATH/$GRAPHSCONTAINER $BASEPLOTPATH/$CPLOTCONTAINER $BASEGRAPHPATH/$CGRAPHSCONTAINER && mkdir $BASEPLOTPATH/$PLOTCONTAINER $BASEGRAPHPATH/$GRAPHSCONTAINER $BASEPLOTPATH/$CPLOTCONTAINER $BASEGRAPHPATH/$CGRAPHSCONTAINER
 
for DATACONTAINER in linkedlist
do 
    mkdir $BASEPLOTPATH/$PLOTCONTAINER/$DATACONTAINER
    for JIT in JIT-on JIT-off
    do
        mkdir $BASEPLOTPATH/$PLOTCONTAINER/$DATACONTAINER/$JIT
        for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
        do
            mkdir $BASEPLOTPATH/$PLOTCONTAINER/$DATACONTAINER/$JIT/$ALG
            for LIST_SIZE in 100 500
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


## C plot environment generation

for DATACONTAINER in linkedlist
do 
    mkdir $BASEPLOTPATH/$CPLOTCONTAINER/$DATACONTAINER
    for ALG in HandsOverHandsSet
    do
        mkdir $BASEPLOTPATH/$CPLOTCONTAINER/$DATACONTAINER/$ALG
        for LIST_SIZE in 100 1000 8000
        do         
            mkdir $BASEPLOTPATH/$CPLOTCONTAINER/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE && touch $BASEPLOTPATH/$CPLOTCONTAINER/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt
            echo $BASEPLOTPATH/$CPLOTCONTAINER/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> $CPLOTFILEPATH       
        done
    done
done

# C Graphics environment generation

for DATACONTAINER in linkedlist
do 
    mkdir $BASEGRAPHPATH/$CGRAPHSCONTAINER/$DATACONTAINER
    for ALG in HandsOverHandsSet
    do
        mkdir $BASEGRAPHPATH/$CGRAPHSCONTAINER/$DATACONTAINER/$ALG && echo $BASEGRAPHPATH/$CGRAPHSCONTAINER/$DATACONTAINER/$ALG/ >> $CPLOTGRAPHPATH
    done
done

echo Full environment deployed