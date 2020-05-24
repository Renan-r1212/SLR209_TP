BASEPLOTPATH=../plots
BASEGRAPHPATH=../plots/graphs
PLOTFILEPATH=plotDataPath_throughputXupRatio.txt
PLOTGRAPHPATH=graphPathFile_throughputXupratio.txt

rm -rf $PLOTGRAPHPATH $PLOTFILEPATH

# Plot files environment
for PLOT in throughput_x_upratio_plotFiles
do 
    rm -rf $BASEPLOTPATH/$PLOT &&  mkdir $BASEPLOTPATH/$PLOT && echo $PLOT environment cleaned
    for DATACONTAINER in linkedlist
    do 
         mkdir $BASEPLOTPATH/$PLOT/$DATACONTAINER
        for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
        do
            mkdir $BASEPLOTPATH/$PLOT/$DATACONTAINER/$ALG
            for LIST_SIZE in 1000 8000
            do         
                mkdir $BASEPLOTPATH/$PLOT/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE && touch $BASEPLOTPATH/$PLOT/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt
                echo $BASEPLOTPATH/$PLOT/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> $PLOTFILEPATH
            done
        done
    done
done

# Graphics generation environment
for PLOT in throughput_x_upratio_graphs
do 
    rm -rf $BASEGRAPHPATH/$PLOT &&  mkdir $BASEGRAPHPATH/$PLOT && echo $PLOT environment cleaned
    for DATACONTAINER in linkedlist
    do 
        mkdir $BASEGRAPHPATH/$PLOT/$DATACONTAINER
        for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
        do
                mkdir $BASEGRAPHPATH/$PLOT/$DATACONTAINER/$ALG/  && echo $BASEGRAPHPATH/$PLOT/$DATACONTAINER/$ALG/ >> $PLOTGRAPHPATH
        done
    done
done
echo Full environment deployed
