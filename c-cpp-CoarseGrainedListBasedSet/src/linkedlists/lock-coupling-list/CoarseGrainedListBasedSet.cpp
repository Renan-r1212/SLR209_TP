#include "CoarseGrainedListBasedSet.h"

int lockc_delete(intset_l_t *set, val_t val) {
	node_l_t *curr, *next;
	int found;

    pthread_mutex_lock(&globalMutex);
	curr = set->head;
	next = curr->next;
	
	while (next->val < val) {
		curr = next;
		next = next->next;
	}
	found = (val == next->val);
	if (found) {
	  curr->next = next->next;
	  node_delete_l(next);
	}
    pthread_mutex_unlock(&globalMutex);
	return found;
}

int lockc_find(intset_l_t *set, val_t val) {
	node_l_t *curr, *next; 
	int found;
	pthread_mutex_lock(&globalMutex);
	
    curr = set->head;
	next = curr->next;
	
	while (next->val < val) {
		curr = next;
		next = curr->next;
	}	
	found = (val == next->val);
	
    pthread_mutex_unlock(&globalMutex);
	return found;
}

int lockc_insert(intset_l_t *set, val_t val) {
	node_l_t *curr, *next, *newnode;
	int found;

	pthread_mutex_lock(&globalMutex);	
	curr = set->head;
	next = curr->next;
	
	while (next->val < val) {
		curr = next;
		next = curr->next;
	}
	found = (val == next->val);
	if (!found) {
		newnode =  new_node_l(val, next, 0);
		curr->next = newnode;
	}
	pthread_mutex_unlock(&globalMutex);
	return !found;
}
