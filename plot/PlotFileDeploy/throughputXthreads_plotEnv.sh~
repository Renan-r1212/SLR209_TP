rm -rf plotDataPath.txt
BASEPLOTPATH=../plots
BASEGRAPHPATH=../plots/graphs
PLOTGRAPHPATH=graphPathFile.txt

for DATACONTAINER in linkedlist skiplists trees
do 
    rm -rf $BASEPLOTPATH/$DATACONTAINER &&  mkdir $BASEPLOTPATH/$DATACONTAINER && echo $DATACONTAINER environment cleaned
    if [ $DATACONTAINER == linkedlist ]
    then
        for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
        do
            mkdir $BASEPLOTPATH/$DATACONTAINER/$ALG
            for LIST_SIZE in 1000 2000 5000 8000 10000 12000 15000 18000 20000
            do        
                mkdir $BASEPLOTPATH/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE && touch $BASEPLOTPATH/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt
                echo $BASEPLOTPATH/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> plotDataPath.txt
            done
        done
    elif [ $DATACONTAINER == trees ]
    then
        for ALG in CATreeMapAVL
        do
            mkdir $BASEPLOTPATH/$DATACONTAINER/$ALG
            for LIST_SIZE in 1000 2000 5000 8000 10000 12000 15000 18000 20000
            do        
                mkdir $BASEPLOTPATH/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE && touch $BASEPLOTPATH/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt
                echo $BASEPLOTPATH/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> plotDataPath.txt
            done
        done
    else
        for ALG in LazySkipList
        do
            mkdir $BASEPLOTPATH/$DATACONTAINER/$ALG
            for LIST_SIZE in 1000 2000 5000 8000 10000 12000 15000 18000 20000
            do        
                mkdir $BASEPLOTPATH/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE && touch $BASEPLOTPATH/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt
                echo $BASEPLOTPATH/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> plotDataPath.txt
            done
        done
    fi
done

for DATACONTAINER in linkedlist skiplists trees
do 
    rm -rf $BASEGRAPHPATH/$DATACONTAINER &&  mkdir $BASEGRAPHPATH/$DATACONTAINER && echo $DATACONTAINER graphic environment cleaned
    if [ $DATACONTAINER == linkedlist ]
    then
        for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
        do
            mkdir $BASEGRAPHPATH/$DATACONTAINER/$ALG/ && echo $BASEGRAPHPATH/$DATACONTAINER/$ALG/ >> $PLOTGRAPHPATH
        done
    elif [ $DATACONTAINER == trees ]
    then
        for ALG in CATreeMapAVL
        do
            mkdir $BASEGRAPHPATH/$DATACONTAINER/$ALG/ && echo $BASEGRAPHPATH/$DATACONTAINER/$ALG/ >> $PLOTGRAPHPATH
        done
    else
        for ALG in LazySkipList
        do
            mkdir $BASEGRAPHPATH/$DATACONTAINER/$ALG/ && echo $BASEGRAPHPATH/$DATACONTAINER/$ALG/ >> $PLOTGRAPHPATH
        done
    fi
done

echo Full environment deployed
