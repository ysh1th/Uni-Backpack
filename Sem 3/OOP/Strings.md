## 💠How to declare a string:
```
import javax.swing.*;
public class StringConstructors {

public static void main( String args[] )
{
char charArray[] = { 'b', 'i', 'r', 't', 'h','', 'd', 'a', 'y' };
byte byteArray[] = { ( byte ) 'n', ( byte ) 'e’,
) (byte ) 'w', (byte) '', (byte ) 'y',
(byte ) 'e', ( byte ) 'a', (byte ) 'r' };
String s = new String( "hello" );
// use String constructors
String s1 = new String(Q);
String s2 = new String( s );
String s3 = new String( charArray );
String s4 = new String( charArray, 6, 3 );
String s5 = new String( byteArray, 4, 4 );
String s6 = new String( byteArray ); 

//append strings to output
String output = "s1 = " + s1;
```
> Strings are to be printed with `String output`.
---

## 💠functions of String in java: [w3school - methods of strings in](https://www.w3schools.com/java/java_ref_string.asp)
- getChars(int strt_pos, int no._of_chars, taken_from, int strt_pos_in_new_destination);
- CharAt();
- .equals(); : equals() compares the content and '==' compares th reference
- compareTo(); : compares the given string with the current string lexicographically. It compares strings on the basis of the Unicode value of each character in the strings.
  - ```
    public class CompareToExample{  
    public static void main(String args[]){  
    String s1="hello";  
    String s2="hello";  
    String s3="meklo";  
    String s4="hemlo";  
    String s5="flag";  
    System.out.println(s1.compareTo(s2));//0 because both are equal  
    System.out.println(s1.compareTo(s3));//-5 because "h" is 5 times lower than "m"  
    ```
- regionMatches; : 
  - ```
    public boolean regionMatches(int toffset, String other, int ooffset, int len)
    ```
  - toffset − the starting offset of the subregion in this string.

    other − the string argument.

    ooffset − the starting offset of the subregion in the string argument.

    len − the number of characters to compare.
  - It returns true if the specified subregion of this string matches the specified subregion of the string argument; false otherwise. Whether the matching is exact or case insensitive depends on the ignoreCase argument.
- Substring:
- toCharArray: 
  - it converts the string into an array characters
<details>
  <summary>compareToIgnoreCase()</summary>
  
  - compares two strings lexicographically, ignoring lower and upper case differences.
  - the comparison based on the unicode value of each char in the string converted to lower case
  - returns:
    - an `int` value 0 if the string is equal to other string, ignoring case differences
    - < 0 if string is lexicographically less than other string
    - greater than 0 if string is lexicographically greater than other string (more characters)
  </details>
  
<details>
  <summary>.concat()</summary>
  
  - appends a string to the end of another string
  - return type: int
  
  </details>
  
<details>
  <summary>.contains()</summary>
  
  - check whether a string contains a sequence of characters.
  - return type : boolean
  ```
  String myStr = "Hello";
  System.out.println(myStr.contains("Hel"));   // true
  System.out.println(myStr.contains("e"));     // true
  System.out.println(myStr.contains("Hi"));    // false
  ```
  </details>
  
<details>
  <summary>.contentEquals()</summary>
  
  - Checks whether a string contains the exact same sequence of characters of the specified CharSequence or StringBuffer
  - return type : Boolean
  ```
  String myStr = "Hello";
  System.out.println(myStr.contains("Hel"));   // true
  System.out.println(myStr.contains("e"));     // false
  System.out.println(myStr.contains("Hi"));    // false
  ```
  </details>
  
<details>
  <summary>.endsWith()</summary>
  
  - Checks whether a string ends with the specified character(s)
  - return type : Boolean
  ```
  String myStr = "Hello";
  System.out.println(myStr.endsWith("Hel"));   // false
  System.out.println(myStr.endsWith("llo"));   // true
  System.out.println(myStr.endsWith("o"));     // true
  ```
  </details>
  
<details>
  <summary>.equalsIgnoreCase()</summary>
  
  - The `equalsIgnoreCase()` method compares two strings, ignoring lower case and upper case differences.
  - return type : Boolean
  ```
  String myStr1 = "Hello";
  String myStr2 = "HELLO";
  String myStr3 = "Another String";
  System.out.println(myStr1.equalsIgnoreCase(myStr2)); // true
  System.out.println(myStr1.equalsIgnoreCase(myStr3)); // false
  ```
  </details>
 
<details>
<summary>.valuesOf()</summary>

- changes value or content of any form into string
- return type : String
</details>

<details>
<summary>.startsWith()</summary>

- there are two variant of this method:
  1. strtsWith()
  2. startsWith(String prefix, int start_pos)
- return type: string.
  </details>
  
<details>
<summary>.ensureCapacity()</summary>

- The ensureCapacity() method of StringBuffer class ensures the capacity to at least equal to the specified minimumCapacity.
  
- If the current capacity of StringBuffer < the argument minimumCapacity, then a new internal array is allocated with greater capacity.
- If the minimumCapacity argument > twice the old capacity, plus 2 then new capacity is equal to minimumCapacity else new capacity is equal to twice the old capacity, plus 2.
- If the minimumCapacity argument passed as parameter < 0, this method takes no action.
                                                          
> Syntax: `public void ensureCapacity(int minimumCapacity)`
  
```

class GFG { 
    public static void main(String[] args) 
    { 
  
        // create a StringBuffer object 
        StringBuffer str = new StringBuffer(); 
  
        // print string capacity 
        System.out.println("Before ensureCapacity "
                           + "method capacity = "
                           + str.capacity()); 
  
        // apply ensureCapacity() 
        str.ensureCapacity(18); 
  
        // print string capacity 
        System.out.println("After ensureCapacity"
                           + " method capacity = "
                           + str.capacity()); 
    } 
} 
```
> Output: `Before ensureCapacity method capacity = 16, 
After ensureCapacity method capacity = 34`

  </details>
  
<details>
  <summary>.format()</summary>
  
  - The java string format() method returns the formatted string by given locale, format and arguments.
  - It is similar to `format()` method in python
  - return type : String
  ```
  public class FormatExample{  
  public static void main(String args[]){  
  String name="sonoo";  
  String sf1=String.format("name is %s",name);  
  String sf2=String.format("value is %f",32.33434);  
  String sf3=String.format("value is %32.12f",32.33434);//returns 12 char fractional part filling with 0  

  System.out.println(sf1);  
  System.out.println(sf2);  
  System.out.println(sf3);  
  }}  
  ```
  | Format Specifier | Data Type | Output |
  | :--------------: | :-------: | :----: |
  | %a | 	floating point (except BigDecimal) | Returns Hex output of floating point number. |
  | %b | any type | `true` is non-null, `false` if null |
  | %c | character | Unicode character |
  | %d | integer (byte, short, int, long, bigint) | Decimal integer |
  | %t | Date/time (incl. long, calender, date and TemporalAccessor) | |
  ```
  String str1 = String.format("%d", 101);          // Integer value  
  String str2 = String.format("%s", "Amar Singh"); // String value  
  String str3 = String.format("%f", 101.00);       // Float value  
  String str4 = String.format("%x", 101);          // Hexadecimal value  
  String str5 = String.format("%c", 'c');          // Char value  
  System.out.println(str1);  
  System.out.println(str2);  
  System.out.println(str3);  
  System.out.println(str4);  
  System.out.println(str5);
  ```
  
  </details>
  
---
## 💠StringBuffer :
- all the methods used in the `String` class is also used in the `stringBuffer` class
- While String gives fixed-length, immutable character sequences
- StringBuffer represents growable and writable character sequences.
-StringBuffer may have characters and substrings inserted in the middle or appended to the end.
- It will automatically grow to make room for such additions and often has more characters preallocated than are actually needed, to allow room for growth.
- StringBuffer class in java is same as String class except it is mutable i.e. it can be changed.

- its initial capacity is 16
- StringBuffer(): creates an empty string buffer with the initial capacity of 16.
- StringBuffer(String str): creates a string buffer with the specified string.
- StringBuffer(int capacity): creates an empty string buffer with the specified capacity as length.

  > - only one thread is allowed to operate on `stringBuffer` hence it is thread safe
  > - due to this, it increases waiting time of threads thus performance is low
  > - So, for `stringBuilder` is used for comparatively high performance
