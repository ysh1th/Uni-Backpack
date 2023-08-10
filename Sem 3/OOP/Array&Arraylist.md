# Arrays

## Ways to delare array
1.
```
type var-name[];
OR
type[] var-name;
```
2. 
```
int intArray[];    //declaring array
intArray = new int[20];  // allocating memory to array
----or----
int[] intArray = new int[20]; // combining both statements in one
```
3. 
```
 int[] intArray = new int[]{ 1,2,3,4,5,6,7,8,9,10 }; 
 // Declaring array literal
```
- in general:
```
class GFG {
    public static void main(String[] args)
    {
        // declares an Array of integers.
        int[] arr;
 
        // allocating memory for 5 integers.
        arr = new int[5];
 
        // initialize the first elements of the array
        arr[0] = 10;
 
        // initialize the second elements of the array
        arr[1] = 20;
 
        // so on...
        arr[2] = 30;
        arr[3] = 40;
        arr[4] = 50;
 
        // accessing the elements of the specified array
        for (int i = 0; i < arr.length; i++)
            System.out.println("Element at index " + i
                               + " : " + arr[i]);
    }
}
```
---

## Array of objects
- it is basically an array with objects as elements
- when we say Array of Objects it is not the object itself that is stored in the array but the reference of the object.
#### Creating an array of objects
`Class_Name[ ] objectArrayReference;`

#### instantiating array of objects
`Class_Name obj[ ]= new Class_Name[Array_Length];`

#### initiating array of objects
```
// Java program to demonstrate initializing
// an array of objects using constructor

class GFG {

	public static void main(String args[])
	{

		// Declaring an array of student
		Student[] arr;

		// Allocating memory for 2 objects
		// of type student
		arr = new Student[2];

		// Initializing the first element
		// of the array
		arr[0] = new Student(1701289270, "Satyabrata");

		// Initializing the second element
		// of the array
		arr[1] = new Student(1701289219, "Omm Prasad");

		// Displaying the student data
		System.out.println(
			"Student data in student arr 0: ");
		arr[0].display();

		System.out.println(
			"Student data in student arr 1: ");
		arr[1].display();
	}
}

// Creating a student class with
// id and name as a attributes
class Student {

	public int id;
	public String name;

	// Student class constructor
	Student(int id, String name)
	{
		this.id = id;
		this.name = name;
	}

	// display() method to display
	// the student data
	public void display()
	{
		System.out.println("Student id is: " + id + " "
						+ "and Student name is: "
						+ name);
		System.out.println();
	}
}
```
- example of array of objects by adding initial values
```
class GFG {
 
    public static void main(String args[])
    {
        // Creating an array of objects
        // declared with initial values
        Object[] javaObjectArray
            = { "Maruti", new Integer(2019), "Suzuki",
                new Integer(2019) };
 
      // Printing the values
        System.out.println(javaObjectArray[0]);
        System.out.println(javaObjectArray[1]);
        System.out.println(javaObjectArray[2]);
        System.out.println(javaObjectArray[3]);
    }
}
```
---

## other ways to print arrays
```
public class Array {

    public static void main(String[] args) {
        int[] array = {1, 2, 3, 4, 5};

        for (int element: array) {
            System.out.println(element);
        }
    }
}
```
- Using standard library arrays
```
import java.util.Arrays;

public class Array {

    public static void main(String[] args) {
        int[] array = {1, 2, 3, 4, 5};

        System.out.println(Arrays.toString(array));
    }
}
```

---
# Array list
> For array, to return from one method to another, use return `arr_name` without any `[]`.
> while passing an array to another method, that method initialization should be `public static int[] meth_name (parameters)`

- To obtain or print an arraylist, use `.get(index)` 
- to find the size of arraylist: `size()`
- to append elements: `add()`
- to update an element in arraylist with elements already: `.set(index, new_ele)`
- to append elements in the given index: `add(index, element)`
- to remove elements: `remove()`
- to remove an array: `remove()`
- to sort in ascending order(static fn): `sort()`
- to sort: `Collections.sort(arr_lst_name); for(String str: arr_lst_name) { Sout(str)}`
- to sort in descending order: `reverseOrder()`
---

- To declare arraylist, with initial size n: `ArrayList<integer> arrli_name = new ArrayList<integer>(n)`
> another way to print elements in 'array' or 'arraylist': `for(type a:arr) System.out.println(arr)` which is also a shortcut way to print
- To create an array of objects of class
  ```
  import java.util.*;  
    class Book {  
    int id;  
    String name,author,publisher;  
    int quantity;  
    public Book(int id, String name, String author, String publisher, int quantity) {  
        this.id = id;  
        this.name = name;  
        this.author = author;  
        this.publisher = publisher;  
        this.quantity = quantity;  
    }  
    }  
    public class ArrayListExample {  
    public static void main(String[] args) {  
        //Creating list of Books  
        List<Book> list=new ArrayList<Book>();  
        //Creating Books  
        Book b1=new Book(101,"Let us C","Yashwant Kanetkar","BPB",8);  
        Book b2=new Book(102,"Data Communications & Networking","Forouzan","Mc Graw Hill",4);  
        Book b3=new Book(103,"Operating System","Galvin","Wiley",6);  
        //Adding Books to list  
        list.add(b1);  
        list.add(b2);  
        list.add(b3);  
        //Traversing list  
        for(Book b:list){  
            System.out.println(b.id+" "+b.name+" "+b.author+" "+b.publisher+" "+b.quantity);  
        }  
    }  
    } 
  ```
