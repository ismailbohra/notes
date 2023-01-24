# JAVA PRACTICAL FILE

## Dhananjay Porwal
## EN19CS301110

1. Write a program to print Hello World on output screen.
```java
class Main{
    public static void main(String arg[]){
        System.out.println("Hello Reader");
    }
}
```

2. Write a program to perform arithmetic operation on two numbers. 
```java
class sum{
    public static void main(String arg[]){
        int a= 5, b= 6, c;
        c= a+ b;
        System.out.print("Sum is :" +c);
    }
}
```
3. Write a program to perform arithmetic operation on two numbers using user input. 
```java
import java.util.Scanner;  
class UserInputDemo   
{  
public static void main(String[] args)  
{  
Scanner sc= new Scanner(System.in);
System.out.print("Enter first number- ");  
int a= sc.nextInt();  
System.out.print("Enter second number- ");  
int b= sc.nextInt();  
System.out.print("Enter third number- ");  
int c= sc.nextInt();  
int d=a+b+c;  
System.out.println("Total= " +d);  
}  
}  
```

4. Write a program to find sum of individuals digits of any three digits number.
```java
import java.util.Scanner;
public class Digit_Sum 
{
    public static void main(String args[])
    {
        int m, n, sum = 0;
        Scanner s = new Scanner(System.in);
        System.out.print("Enter the number:");
        m = s.nextInt();
        while(m > 0)
        {
            n = m % 10;
            sum = sum + n;
            m = m / 10;
        }
        System.out.println("Sum of Digits:"+sum);
    }
}
```

5. Write a program to print any three digit number in reverse order.
```java
public class ReverseNumber {

    public static void main(String[] args) {

        int num = 123, rev = 0;

        while(num != 0) {
            int digit = num % 10;
            rev = rev * 10 + digit;
            num /= 10;
        }

        System.out.println("Reversed Number: " + rev);
    }
}
```

6. Write a program to swap any two numbers using third variable.
```java
import java.util.Scanner;

class swap2numbers {
    public static void main(String arg[]){
        System.out.println("Enter two numbers");
        Scanner sc= new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();
        int temp = a;
        a = b;
        b = temp;
        System.out.println("After Swapping: a = " +a +" b = " +b);


    }
}
```

7. Write a program to swap any two numbers without using third variable.
```java
import java.util.Scanner;

class swap2numbers {
    public static void main(String arg[]) {
        System.out.println("Enter two numbers");
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();
        a = a + b;
        b = a - b;
        a = a - b;
        System.out.println("After Swapping: a = " + a + " b = " + b);

    }
}
```

8. Write a program to find greatest of two number.
```java
import java.util.Scanner;
public class greatestoftwo
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter the first number : ");				
		int first = sc.nextInt();
		System.out.print("Enter the second number : ");				
		int second = sc.nextInt();
		if(first > second)											
			System.out.println(first+" is greater than "+second);
		else if(second > first)
			System.out.println(second+" is greater than "+first);
		else
			System.out.println("Both numbers are Equal");
												
	}
}
```

9. Write a program to check number is even or odd.
```java
import java.util.Scanner;
public class checkevenodd
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter the first number : ");				
		int first = sc.nextInt();

		if(first%2==0 )											
			System.out.println(first+" is even number");
        else									
			System.out.println(first+" is odd number");
												
	}
}
```

10. Write a program to check given char is vowel or consonant.
```java
import java.util.Scanner;
public class VowelConsonant {

    public static void main(String[] args) {
        System.out.println("Enter an alphabet");

    Scanner sc= new Scanner(System.in);
    char ch= sc.next().charAt(0);  


        if(ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' )
            System.out.println(ch + " is vowel");
        else
            System.out.println(ch + " is consonant");

    }
}
```

11. Write a program to calculate addition of two numbers using prototyping method.
```java
import java.util.Scanner;

public class prototyping_method {
    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the first number: ");
        int num1 = sc.nextInt();
        System.out.print("Enter the second number: ");
        int num2 = sc.nextInt();
        int Total = calcTotal(num1, num2);
        System.out.println("Sum of two numbers  " + Total);
    }

    public static int calcTotal(int x, int y) {
        return x + y;
    }
}
```

12. Program to demonstrate function overloading for calculation of average.
```java

import java.util.Scanner;

class collage {
    private int collageCode;
    private String collageName;
    Scanner sc = new Scanner(System.in);

    public void getCollage() {
        System.out.println("Enter Collage Name and Collage Code");
        collageCode = sc.nextInt();
        collageName = sc.next();

    }

    public void showCollage() {
        System.out.println("Collage Code = " + collageCode);
        System.out.println("Collage Name = " + collageName);

    }
}

class Faculty extends collage {
    private int facultyID;
    private String facultyName;

    public void getFaculty() {
        System.out.println("Enter Faculty I.D. and name");
        facultyID = sc.nextInt();
        facultyName = sc.next();
    }

    public void showFaculty() {
        System.out.println("Faculty I.D. = " + facultyID);
        System.out.println("Faculty Name = " + facultyName);
    }
}

class overloading {
    public static void main(String arg[]) {
        Faculty f1 = new Faculty();
        f1.getFaculty();
        f1.getCollage();
        f1.showCollage();
        f1.showFaculty();
    }
}

```

13. Program to show the details of students using concept of inheritance.
```java
class Personal {
  String name = new String();
  String fname = new String();
  String add = new String();
  String phno = new String();

  Personal(String a, String b, String c, String d) {
    name = a;
    fname = b;
    add = c;
    phno = d;
  }

  void display() {
    System.out.println("Name : " + name);
    System.out.println("Address : " + add);
    System.out.println("Father's Name : " + fname);
    System.out.println("Contact Number : " + phno);
  }
}

class Education extends Personal {
  int roll, age;
  char section;
  String branch = new String();

  Education(String a, String b, String c, String d, int e, int f, char g, String h) {
    super(a, b, c, d);
    roll = e;
    age = f;
    section = g;
    branch = h;
  }

  void display2() {
    super.display();
    System.out.println("Roll Number : " + roll);
    System.out.println("AGE :" + age);
    System.out.println("SECTION :" + section);
    System.out.println("Branch : " + branch);

  }

}

class Hello {
  public static void main(String args[]) {
    Education e = new Education("Binod", "Vikram", "Alpha Colony", "9876264727", 10, 20, 'B', "CSE");
    e.display2();
  }
}
```

14. Write a program to perform all string functions.
```java
import java.util.*;

class StringOperation {
    public static void main(String[] args) {
        String first = "", second = "";
        Scanner sc = new Scanner(System.in);
        System.out.println("String Operation");
        System.out.println();
        System.out.print("Enter the first Sting: ");
        first = sc.nextLine();
        System.out.print("Enter the second Sting: ");
        second = sc.nextLine();
        System.out.println("The strings are: " + first + " , " + second);
        System.out.println("The length of the first string is :" + first.length());
        System.out.println("The length of the second string is :" + second.length());
        System.out.println("The concatenation of first and second string is :" + first.concat(" " + second));
        System.out.println("The first character of " + first + " is: " + first.charAt(0));
        System.out.println("The uppercase of " + first + " is: " + first.toUpperCase());
        System.out.println("The lowercase of " + first + " is: " + first.toLowerCase());
        System.out.print("Enter the occurance of a character in " + first + " : ");
        String str = sc.next();
        char c = str.charAt(0);
        System.out.println("The " + c + " occurs at position " + first.indexOf(c) + " in " + first);
        System.out.println(
                "The substring of " + first + " starting from index 3 and ending at 6 is: " + first.substring(3, 7));
        System.out.println("Replacing 'a' with 'o' in " + first + " is: " + first.replace('a', 'o'));
        boolean check = first.equals(second);
        if (!check)
            System.out.println(first + " and " + second + " are not same.");
        else
            System.out.println(first + " and " + second + " are same.");
    }
}
```
15. Write a program to make package.
```java
package mypack;  
public class Sample{  
 public static void main(String args[]){  
    System.out.println("Welcome to Linux");  
   }  

}
```
16. Write a program to show Arithmetic Exception Handling.
```java
public class JavaExceptionExample{  
    public static void main(String args[]){  
     try{  

      int data=100/0;  
     }catch(ArithmeticException e){System.out.println(e);}  
     //rest code of the program   
     System.out.println("Remaining code...");  
    }  
  }  
```
17. Write a program to show Null Pointer Exception Handling.
```java
public class JavaExceptionExample1 {
  public static void main(String args[]) {
    try {

      String s = null;
      System.out.println(s.length());// NullPointerException
    } catch (NullPointerException e) {
      System.out.println(e);
    }
    // rest code of the program
    System.out.println("Remaining code...");
  }
}
```
18. Write a program to show Number Format Exception Handling.
```java
public class JavaExceptionExample2 {
    public static void main(String args[]) {
        try {
            String s = "abc";
            int i = Integer.parseInt(s);// NumberFormatException
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        // rest code of the program
        System.out.println("Remaining code...");
    }
}
```
19. Write a program to show Array Index Out Of Bounds Exception Handling.
```java
public class JavaExceptionExample3 {
    public static void main(String args[]) {
        try {

            int a[] = new int[5];
            a[10] = 50; // ArrayIndexOutOfBoundsException
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println(e);
        }
        // rest code of the program
        System.out.println("Remaining code...");
    }
}
```
20. Write a program to show Compilation Exception.
```java
import java.io.*;
class CTE {
    public static void main(String args[]) throws IOException {
        FileInputStream input1 = null;
        input1 = new FileInputStream("/home/dhananjay/Documents/Programming/Java Program/file.txt");

        int m;
        while ((m = input1.read()) != -1) {
            System.out.print((char)m);
        }

        input1.close();
    }
}
```

21.Write a program to demonstrate Multi-Threading in JAVA. 
```java
import java.lang.*;
class FirstThread extends Thread
{
    public void run()
    {
        for(int i=0; i<4; i++)
        {
            try
            {
                if(i == 3)
                {
                    sleep(4000);
                }
            }
            catch(Exception x)
            { }
            System.out.println(i);
        }
        System.out.println(" First Thread Finished ");
    }
}
class SecondThread extends Thread
{
    public void run()
    {
        for(int i=0; i<4; i++)
        {
            System.out.println(i);
        }
        System.out.println(" Second Thread Finished ");
    }
}
class ThirdThread extends Thread
{
    public void run()
    {
        for(int i=0; i<4; i++)
        {
            System.out.println(i);
        }
        System.out.println(" Third Thread Finished ");
    }
}
class MultiThread
{
    public static void main(String arg[])
    {
        FirstThread a1 = new FirstThread();
        SecondThread b1 = new SecondThread();
        ThirdThread c1 = new ThirdThread();
        a1.start();
        b1.start();
        c1.start();
    }
}

```

22. Write a program to display "Hello World" in web browser using applet.
```java
import java.applet.Applet;
import java.awt.Graphics;
 
public class HelloWorld extends Applet {
 
public void paint(Graphics g) {
  
  g.drawString("Hello World !", 10, 30);
 }
}

```

23. 
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```
```java
```



