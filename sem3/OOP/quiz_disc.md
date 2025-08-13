1. a `static` block always gets executed first
- non-static variables cannot be accessed by static block
- in the code, the output would be 'Dubai' > 'ac' > 'bpdc' 
> 
```
public class Main
{
	static void bits1() { System.out.println("bpdc");}
	public void bits2() { System.out.println("ac");}
	public static void main(String[] args) {
		Main ob = new Main();
		ob.bits2();
		ob.bits1();
	}
	static 
	{
	    System.out.println("Dubai");
	}

}
```
- in the following code, Although we don't have an object of Test, static block is called because i is being accessed in following statement.
```
class Test {
 
    // Case 1: Static variable
    static int i = 20;
    // Case 2: non-static variables
    int j;
 
    // Case 3: Static block
    // Start of static block
    static
    {
        i = 10;
        System.out.println("i = 10 is the static var value "+ i);
    }
    // End of static block
}
 
// Class 2
// Main class
class Main {
 
    // Main driver method
    public static void main(String args[])
    {
        System.out.println(Test.i);
    }
}
```
---
2. Main method needs to have `public`, `static` and `void`, if any of these are missing, the program will compile, but will show runtime error
3. `final` keyword implies something cannot be changed. The `static` keyword implies class-level scope. When you combine static final in Java, you create a variable that is global to the class and impossible to change.
4. In the following code `int y = 20;` is within the `if()` loop, hence it is a local variable of that `if` loop itself.
So, it cannot be accessed outside the `if` loop
```
public class Main
{
public static void main(String args[])
{
int x = 10;
if(x==10)
{
int y = 20;
System.out.println("x and y: "+x+" "+y);
x = y*2;
}
System.out.println("x and y: "+x+" "+y);
}
}
```
