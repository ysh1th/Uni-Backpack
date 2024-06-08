- It is a linear data structure where elements are not stored in consequent order
- Each element is a separate object with data part and address part
- The elements are linked using pointers and addresses.
- Each element is known as a node.
- It is a dynamic array
- It is best to use an ArrayList when:
  - You want to access random items frequently
  - You only need to add or remove elements at the end of the list

- It is best to use a LinkedList when:
  - You only use the list by looping through it instead of accessing random
items.
  - You frequently need to add and remove items from the beginning or
middle of the list.
---

- To instantiate: `LinkedList< ll = new LinkedList();` or `LinkedList ll = new LinkedList(C);` or even `LinkedList ll = new LinkedList(C);`

#### Example 1:
```
import java.util.*;
 
// Main class
public class GFG {
 
    // Driver code
    public static void main(String args[])
    {
        // Creating object of the
        // class linked list
        LinkedList<String> ll = new LinkedList<String>();
 
        // Adding elements to the linked list
        ll.add("A");
        ll.add("B");
        ll.addLast("C");
        ll.addFirst("D");
        ll.add(2, "E");
 
        System.out.println(ll);
 
        ll.remove("B");
        ll.remove(3);
        ll.removeFirst();
        ll.removeLast();
 
        System.out.println(ll);
    }
}
```

#### Example 2:
```
import java.util.*;

public class LinkedListExample {

public static void main(String args[]) {

  /* Linked List Declaration */
  LinkedList<String> linkedlist = new
  LinkedList<String>();

  /*add(String Element) is used for
  adding
  * the elements to the linked list*/
  linkedlist.add("Item1");
  linkedlist.add("Item5");
  linkedlist.add("Item3");
  linkedlist.add("Item6");
  linkedlist.add("Item2");
  
  /*Display Linked List Content*/
  System.out.println("Linked List Content: " +linkedlist);
  
  /*Add First and Last Element*/
  linkedlist.addFirst("First Item");
  linkedlist.addLast("Last Item");
  
  System.out.println("LinkedList Content after addition: " +linkedlist);
  
  /*This is how to get and set Values*/
  Object firstvar = linkedlist.get(0);
  
  System.out.println("First element: "+firstvar);
  
  linkedlist.set(0, "Changed first item");
  Object firstvar2 = linkedlist.get(0);
  
  System.out.println("First element after
  
  update by set method: " +firstvar2);
  
  /*Remove first and last element*/
  linkedlist.removeFirst();
  linkedlist.removeLast();
  
  System.out.println("LinkedList after deletion of first and last element: " +linkedlist);
  
  /* Add to a Position and remove
  from a position*/
  linkedlist.add(0, "Newly added item");
  linkedlist.remove(2);
  
  System.out.println("Final Content: " +linkedlist);
}
```
}
