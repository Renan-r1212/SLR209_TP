package linkedlists.lockbased;

import java.util.concurrent.locks.Lock;
import contention.abstractions.AbstractCompositionalIntSet;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Implementation of the fine grained lock based set, where it goes
 * through the linkedlist of the set locking only 2 nodes per access.
 */
public class HandsOverHandsSet extends AbstractCompositionalIntSet {
    private Node head;
    private Node tail;

    public HandsOverHandsSet(){
        head = new Node(Integer.MIN_VALUE);
        tail = new Node(Integer.MAX_VALUE);
        head.next = tail;
    }

    /**
     * Add an element to the list.
     * Goes through the list and looking for the place where the element
     * @param x will be inserted locking 2 nodes ad a time. If @param x 
     * is already in the set, then it's not added. If the element was 
     * added the method returns true, esle it returns false. Once the
     * operation is done, the locks are realesed.
     * @return a boolean indicating if the element were added.
     * @param x the element to add.
     */
    @Override
    public boolean addInt(int x) {
        head.lock();
        Node pred = head;
        try {
            Node curr = pred.next;
            curr.lock();
            try {
                while(curr.key < x){
                    pred.unlock();
                    pred=curr;
                    curr=curr.next;
                    curr.lock();
                }
                if(curr.key == x){
                    return false;
                }
                Node newNode = new Node(x);
                pred.next = newNode;
                newNode.next=curr;
                return true;
            } finally {
                curr.unlock();
            }
        } finally {
            pred.unlock();
        }
    }

    /**
     * Remove an element from the list.
     * Goes through the list and looking for the element @param x to
     * be removed locking 2 nodes ad a time.If the element was removed
     * the method returns true, esle it returns false. Once the
     * operation is done, the locks are realesed.
     * @return a boolean indicating if the element where found and removed.
     * @param x The element to remove
     */
    @Override
    public boolean removeInt(int x) {
        head.lock();
        Node pred = head;
        try {
            Node curr = pred.next;
            curr.lock();
            try {
                while(curr.key < x){
                    pred.unlock();
                    pred=curr;
                    curr=curr.next;
                    curr.lock();
                }
                if(curr.key != x) {
                    return false;
                }
                pred.next = curr.next;
                return true;
            } finally {
                curr.unlock();
            }
        } finally {
            pred.unlock();
        }
    }

    /**
     * Check whether a element is in the set.
     * Goes through the list and looking for the place where the
     * element @param x is located locking 2 nodes ad a time. Once
     * it finds the place than it returns true if x is in the set,
     * else it returns false. Once the operation is done, the locks
     * are realesed.
     * @return a boolean indicating if the element is in the set
     * @param x the element to check the presence of
     */
    @Override
    public boolean containsInt(int x) {
        head.lock();
        Node pred = head;
        try {
            Node curr = pred.next;
            curr.lock();
            try {
                while(curr.key < x){
                    pred.unlock();
                    pred=curr;
                    curr=curr.next;
                    curr.lock();
                }
                return curr.key == x;
            } finally {
                curr.unlock();
            }
        } finally {
            pred.unlock();
        }
    }

    @Override
    public int size() {
        int count = 0;

        Node curr = head.next;
        while (curr.key != Integer.MAX_VALUE) {
            curr = curr.next;
            count++;
        }
        return count;
    }

    @Override
    public void clear() {
        head = new Node(Integer.MIN_VALUE);
        head.next = new Node(Integer.MAX_VALUE);
    }

    private class Node {
        public int key;
        public Node next = null;

        private Lock lock = new ReentrantLock();

        Node(int item) {
            key = item;
        }

        void lock(){
            this.lock.lock();
        }

        void unlock(){
            this.lock.unlock();
        }
    }
}
