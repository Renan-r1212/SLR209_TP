rm -rf plotDataPath.txt

for DATACONTAINER in linkedlist skiplists
do 
    rm -rf ../plots/$DATACONTAINER &&  mkdir ../plots/$DATACONTAINER && echo $DATACONTAINER environment cleaned
    if [ $DATACONTAINER == linkedlist ]
    then
        for ALG in CoarseGrainedListBasedSet HandsOverHandsSet
        do
            mkdir ../plots/$DATACONTAINER/$ALG
            for LIST_SIZE in 1000 2000 5000 8000 10000 12000 15000 20000
            do        
                
                echo ../plots/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> plotDataPath.txt
            done
        done
    else
        for ALG in LazySkipList
        do
            mkdir ../plots/$DATACONTAINER/$ALG
            for LIST_SIZE in 1000 2000 5000 8000 10000 12000 15000 20000
            do        
                mkdir ../plots/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE && touch ../plots/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt
                echo ../plots/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt >> plotDataPath.txt
            done
        done
    fi
done
echo Full environment deployed