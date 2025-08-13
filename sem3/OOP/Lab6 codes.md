### Problem 3
```
Scanner sc = new Scanner (System.in);
System.out.println("enter size of array");
int n = sc.nextInt();
System.out.println("enter elements");
for (int i = 0; i<n; i++) 
{
  x[i] = sc.nextInt();
}
//passing the array 'x' to function method
int []arr = func(x)

for (int i = 0; i< arr.length; i++) 
{
  System.out.println(arr[i]);
  System.out.println(" ");
}


//declaring method of array of int type
public static int[] func(int[]x)
{
  int[] arr = new int[x.length];
  for (int i = 0; i<arr.length; i++)
  {
    if (x[i] <= 0)
    {
      arr[i] = -1;
    }
    else 
    {
      arr[i] = fact (x[i]); //passing into fact method
    }
  }
  return arr;
}
```

### Problem 4
- we create a sub loop inside a main loop with `i` for outer one and `j` for inner loop, to enter a random value of int with `c[i] = rand.nextInt(10)` where `rand` is the Random class name (any)
- in the inner loop, after entering the values randomly, we add the added value to the sum variable to check if the array equals 300.
- if the array elements equals 300, the array breaks
- another array outside the inner loop is created and we check how many times each number from 0-9 is used
- if 5 is repeated 2 times, 2 is inserted into the 4th position of new array 

```
import java.util.Random;
class Main
  {
    public static void main (String[]args)
    {
     Random rand = new Random();
      int x[] = new int[100];
      int []count = new int[10];
        for (int i = 0; i < 10; i++ )
        {
        count[i] = 0;
        }
     int sum;
     int total=0;
       while (total<100)// for (int i = 0; i < 100; i++)
       {
            sum = 0;
            for (int j = 0; j < 100; j++)
                {
                x[j] = rand.nextInt (10);
                 sum += x[j];
                 
                  }

            if (sum >=500  && sum <=600)
            {
                total++;
                for (int j = 0; j < 100; j++)
                {
                count[x[j]]++;
                }
            }
        }
 
   
        for (int i = 0; i < 10; i++ )
        {
        System.out.print(i);
        System.out.print(" : ");
        System.out.println(count[i]);


         }
     }
  }
```
