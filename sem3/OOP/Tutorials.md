# Tutorial 1
2. GCD
```
public class Main
{
	public static void main(String[] args) {
	    int x = 12, GCD=1;
	    int y = 8;
	    for (int i = 1; i<=x && i<=y; i++) {
	        if(x%i==0 && y%i==0){
	            GCD = i;
	        }
	    }
	    System.out.println(GCD+" is the GCD");
	}
}

```
---
3. nth member of fibonacci sequence
- In your code, num starts as the 0th Fibonacci number, and num1 as the 1st. So to find the nth, you have to iterate the step n times:
```
for (loop = 0; loop < n; loop ++)
{
    fibonacci = num + num2;
    num = num2;
    num2 = fibonacci;
}
System.out.print(num);
```

# Tutorial 4
1. 
```
class Count {
    public int count;
    public Count(int c) {
        count = c;
    }
    public Count() {
        count = 1;
    }
}
public class Practice {
    public static void main(String[] args) {
        Count myCount = new Count();
        int times = 0;
        for (int i = 0; i < 100; i++)
            increment(myCount, times);
        System.out.println("count is " + myCount.count);
        System.out.println("times is " + times);
    }
    public static void increment(Count c, int times) {
        c.count++;
        times++;
    }
}   
```
- In above code the output would be **"count is: 101, times is: 0"**
- the times is **0** because the method is a static method, where the modification about the state of the object is not allowed
    - If increment method is not declared static, it shows "error: non-static method increment(Count,int) cannot be referenced  from a static context" since a non-static method is being referenced from a static main method.
- But count is returned as incremented no. as the increase is happening in the 'Count' class and <u>is stored there itself</u>
- count is displayed 101 times since count is initiated with the value 1, 100+1=101. 

---
2. **In a class, one method has two overloaded forms. One form is defined as static and another form is defined as non-static. Is that method properly overloaded?**
- Yes. Compiler checks only method signature to verify whether a particular method is properly overloaded or not. It doesn’t check static or non-static feature of the method.
---
3. Method overloading shows static polymorphism
---
---
# Tutorial 5

```
public class Main 
{ 
static int x = 11; 
private int y = 33; 
public void method1(int x) 
{ 
Main t = new Main(); 
this.x = 22; 
y = 44; 

System.out.println("Main.x: " + Main.x); 
System.out.println("t.x: " + t.x); 
System.out.println("x: " + x); 
System.out.println("t.y: " + t.y); 
System.out.println("y: " + y); 
} 

public static void main(String args[]) 
{ 
Main t = new Main(); 
t.method1(5); 
} 
} 
```
#### Output 
Main.x: 22
t.x: 22
x: 5
t.y: 33
y: 44
---

```
class Main 
{ 
public static void main(String args[]) 
{ 
int x = 5;
for (int x = 0; x < 5; x++) 
{ 
System.out.println(x); 
} 

System.out.println(x); 
} 
}
```
- It shows compilation error
- Since `x` is already declared to be declared again in the for-loop
---

```
public class Main 
{ 
public void StudentAge() 
{ 
int age = 0; 
age = age + 5; 
} 

public static void main(String args[])
{
System.out.println("Student age is : " + age); 
} 
} 
```
- `age` is declared in one of the two methods, so its scope is limited to that method only.
- Hence it shows `compilation error`when tried to use it in another method
---

```
class Main
{ 
int a; 
int b; 

// Parameterized constructor 
Main(int a, int b) 
{ 
this.a = a; 
this.b = b; 
} 

void display() 
{ 
//Displaying value of variables a and b 
System.out.println("a = " + a + " b = " + b); 
} 

public static void main(String[] args) 
{ 
Main object = new Main(10, 20); 
object.display(); 
} 
} 
```
- By, passing the variables into `this.` function, the variable scope is now limited to class
- So, any method in the class can use the variables
---
