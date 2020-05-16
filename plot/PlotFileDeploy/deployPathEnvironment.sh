DATACONTAINER=linkedlist
rm -rf ../plots/$DATACONTAINER && mkdir ../plots/$DATACONTAINER
for ALG in CoarseGrainedListBasedSet LazyLinkedListSortedSet HandsOverHandsSet
do
    mkdir ../plots/$DATACONTAINER/$ALG
    for LIST_SIZE in 1000 2000 5000 8000 10000 12000 15000 20000
    do        
        mkdir ../plots/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE
        touch ../plots/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt
    done
done


DATACONTAINER=skiplists
rm -rf ../plots/$DATACONTAINER && mkdir ../plots/$DATACONTAINER
for ALG in LazySkipList
do
    mkdir ../plots/$DATACONTAINER/$ALG
    for LIST_SIZE in 10 100 1000 2000 5000 8000 10000 12000 15000 20000
    do        
        mkdir ../plots/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE
        touch ../plots/$DATACONTAINER/$ALG/plot_LISTSIZE_$LIST_SIZE/plot.txt
    done
done