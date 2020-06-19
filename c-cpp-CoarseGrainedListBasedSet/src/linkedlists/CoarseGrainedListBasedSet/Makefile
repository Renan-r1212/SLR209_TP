ROOT = ../../..

include $(ROOT)/common/Makefile.common

BINS = $(BINDIR)/$(LOCK)-hoh-list
CFLAGS += -std=gnu89

.PHONY:	all clean

all:	main

linkedlist-lock.o: 
	$(CC) $(CFLAGS) -c -o $(BUILDIR)/linkedlist-lock.o linkedlist-lock.c

lazy.o: linkedlist-lock.h linkedlist-lock.o
	$(CC) $(CFLAGS) -c -o $(BUILDIR)/lazy.o lazy.c	 

CoarseGrainedListBasedSet.o: linkedlist-lock.h linkedlist-lock.o
	$(CC) $(CFLAGS) -c -o $(BUILDIR)/CoarseGrainedListBasedSet.o CoarseGrainedListBasedSet.c

intset.o: linkedlist-lock.h CoarseGrainedListBasedSet.h lazy.h
	$(CC) $(CFLAGS) -c -o $(BUILDIR)/intset.o intset.c

test.o: linkedlist-lock.h CoarseGrainedListBasedSet.h lazy.h intset.h
	$(CC) $(CFLAGS) -c -o $(BUILDIR)/test.o test.c

main: linkedlist-lock.o CoarseGrainedListBasedSet.o lazy.o intset.o test.o
	$(CC) $(CFLAGS) $(BUILDIR)/linkedlist-lock.o $(BUILDIR)/lazy.o $(BUILDIR)/CoarseGrainedListBasedSet.o $(BUILDIR)/intset.o $(BUILDIR)/test.o -o $(BINS) $(LDFLAGS)

clean:
	rm -f $(BINS)
