import 'package:c_programs/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

class DetailScreen extends StatefulWidget {


  final int listIndex;

  const DetailScreen({Key? key,required this.listIndex}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState(listIndex);


}

class _DetailScreenState extends State<DetailScreen> {


  final int listIndex;

  _DetailScreenState(this.listIndex);

  static const String code_1 = r"""

#include <stdio.h>

int main() {

    printf("Hello, World!\n");

    return 0;
}
""";

  static const String code_2 = r"""

#include <stdio.h>

int main() {
    printf("My name is "C Programs".\n");
    return 0;
}

""";

  static const String code_3 = r"""

#include <stdio.h>

int main() {
    int i;
    
    for (i = 1; i <= 10; i++) {
        printf("%d ", i);
    }
    
    printf("\n");
    return 0;
}


""";

  static const String code_4 = r"""

#include <stdio.h>

int main() {
    int num;
    
    printf("Enter a number: ");
    scanf("%d", &num);
    
    printf("You entered: %d\n", num);
    
    return 0;
}


""";

  static const String code_5 = r"""

#include <stdio.h>

int main() {
    int num1, num2, sum;
    
    printf("Enter the first number: ");
    scanf("%d", &num1);
    
    printf("Enter the second number: ");
    scanf("%d", &num2);
    
    sum = num1 + num2;
    
    printf("The sum of %d and %d is: %d\n", num1, num2, sum);
    
    return 0;
}

""";

  static const String code_6 = r"""

#include <stdio.h>

int main() {
    int num;
    
    printf("Enter a number: ");
    scanf("%d", &num);
    
    if (num % 2 == 0) {
        printf("%d is an even number.\n", num);
    } else {
        printf("%d is an odd number.\n", num);
    }
    
    return 0;
}

""";

  static const String code_7 = r"""

#include <stdio.h>

int main() {
    int num1, num2;
    
    printf("Enter the first number: ");
    scanf("%d", &num1);
    
    printf("Enter the second number: ");
    scanf("%d", &num2);
    
    if (num1 > num2) {
        printf("The maximum number is: %d\n", num1);
    } else {
        printf("The maximum number is: %d\n", num2);
    }
    
    return 0;
}

""";

  static const String code_8 = r"""

#include <stdio.h>

int main() {
    int num1, num2;
    
    printf("Enter the first number: ");
    scanf("%d", &num1);
    
    printf("Enter the second number: ");
    scanf("%d", &num2);
    
    if (num1 < num2) {
        printf("The minimum number is: %d\n", num1);
    } else {
        printf("The minimum number is: %d\n", num2);
    }
    
    return 0;
}

""";

  static const String code_9 = r"""

#include <stdio.h>

int main() {
    int num1, num2, temp;
    
    printf("Enter the first number: ");
    scanf("%d", &num1);
    
    printf("Enter the second number: ");
    scanf("%d", &num2);
    
    printf("Before swapping: num1 = %d, num2 = %d\n", num1, num2);
    
    // Swapping logic
    temp = num1;
    num1 = num2;
    num2 = temp;
    
    printf("After swapping: num1 = %d, num2 = %d\n", num1, num2);
    
    return 0;
}


""";

  static const String code_10 = r"""

#include <stdio.h>

int main() {
    int year;

    printf("Enter a year: ");
    scanf("%d", &year);

    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
        printf("%d is a leap year.\n", year);
    } else {
        printf("%d is not a leap year.\n", year);
    }

    return 0;
}



""";

  static const String code_11 = r"""

#include <stdio.h>

int main() {
    int num;
    unsigned long long fact = 1;

    printf("Enter a non-negative integer: ");
    scanf("%d", &num);

    if (num < 0) {
        printf("Factorial is not defined for negative numbers.\n");
    } else {
        int i;
        for (i = 1; i <= num; i++) {
            fact *= i;
        }

        printf("Factorial of %d is: %llu\n", num, fact);
    }

    return 0;
}




""";

  static const String code_12 = r"""

#include <stdio.h>

int main() {
    int num, i;

    printf("Enter a number: ");
    scanf("%d", &num);

    printf("Multiplication table for %d:\n", num);
    for (i = 1; i <= 10; i++) {
        printf("%d x %d = %d\n", num, i, num * i);
    }

    return 0;
}


""";

  static const String code_13 = r"""

#include <stdio.h>

int main() {
    float num1, num2, num3, average;

    printf("Enter the first number: ");
    scanf("%f", &num1);

    printf("Enter the second number: ");
    scanf("%f", &num2);

    printf("Enter the third number: ");
    scanf("%f", &num3);

    average = (num1 + num2 + num3) / 3;

    printf("The average of %.2f, %.2f, and %.2f is: %.2f\n", 
    num1, num2, num3, average);

    return 0;
}


""";

  static const String code_14 = r"""

#include <stdio.h>

int main() {
    int num;

    printf("Enter a number: ");
    scanf("%d", &num);

    if (num > 0) {
        printf("The number is positive.\n");
    } else if (num < 0) {
        printf("The number is negative.\n");
    } else {
        printf("The number is zero.\n");
    }

    return 0;
}


""";

  static const String code_15 = r"""

#include <stdio.h>

int main() {
    int num;
    long long square;

    printf("Enter a number: ");
    scanf("%d", &num);

    square = num * num;

    printf("The square of %d is: %lld\n", num, square);

    return 0;
}



""";

  static const String code_16 = r"""

#include <stdio.h>

int main() {
    int num;
    long long cube;

    printf("Enter a number: ");
    scanf("%d", &num);

    cube = num * num * num;

    printf("The cube of %d is: %lld\n", num, cube);

    return 0;
}



""";

  static const String code_17 = r"""

#include <stdio.h>

int main() {
    int num, i, isPrime = 1;

    printf("Enter a positive integer: ");
    scanf("%d", &num);

    if (num <= 1) {
        isPrime = 0;
    } else {
        for (i = 2; i * i <= num; i++) {
            if (num % i == 0) {
                isPrime = 0;
                break;
            }
        }
    }

    if (isPrime) {
        printf("%d is a prime number.\n", num);
    } else {
        printf("%d is not a prime number.\n", num);
    }

    return 0;
}



""";

  static const String code_18 = r"""

#include <stdio.h>

int main() {
    int num, sum = 0;

    printf("Enter a positive integer: ");
    scanf("%d", &num);

    if (num <= 0) {
        printf("Invalid input. Please enter a positive integer.\n");
    } else {
        for (int i = 1; i <= num; i++) {
            sum += i;
        }

        printf("The sum of natural numbers up to %d is: %d\n", num, sum);
    }

    return 0;
}


""";

  static const String code_19 = r"""

#include <stdio.h>

int main() {
    int numTerms;

    printf("Enter the number of terms: ");
    scanf("%d", &numTerms);

    int firstTerm = 0, secondTerm = 1;
    printf("Fibonacci series up to %d terms: %d, %d", numTerms, firstTerm, secondTerm);

    for (int i = 3; i <= numTerms; i++) {
        int nextTerm = firstTerm + secondTerm;
        printf(", %d", nextTerm);
        firstTerm = secondTerm;
        secondTerm = nextTerm;
    }

    printf("\n");

    return 0;
}


""";

  static const String code_20 = r"""

#include <stdio.h>

int main() {
    int num, reversedNum = 0, originalNum, remainder;

    printf("Enter a number: ");
    scanf("%d", &num);

    originalNum = num;

    while (num != 0) {
        remainder = num % 10;
        reversedNum = reversedNum * 10 + remainder;
        num /= 10;
    }

    if (originalNum == reversedNum) {
        printf("%d is a palindrome.\n", originalNum);
    } else {
        printf("%d is not a palindrome.\n", originalNum);
    }

    return 0;
}


""";

  static const String code_21 = r"""

#include <stdio.h>
#include <string.h>

void reverseString(char* str) {
    int length = strlen(str);
    int start = 0;
    int end = length - 1;

    while (start < end) {
        char temp = str[start];
        str[start] = str[end];
        str[end] = temp;

        start++;
        end--;
    }
}

int main() {

    char str[100];

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    str[strcspn(str, "\n")] = '\0'; // Remove trailing newline character

    printf("Original string: %s\n", str);

    reverseString(str);

    printf("Reversed string: %s\n", str);

    return 0;
}


""";

  static const String code_22 = r"""

#include <stdio.h>

int main() {
    int decimalNum;
    printf("Enter a decimal number: ");
    scanf("%d", &decimalNum);

    int binaryNum[32];
    int index = 0;

    while (decimalNum > 0) {
        binaryNum[index] = decimalNum % 2;
        decimalNum /= 2;
        index++;
    }

    printf("Binary representation: ");
    if (index == 0) {
        printf("0");
    } else {
        for (int i = index - 1; i >= 0; i--) {
            printf("%d", binaryNum[i]);
        }
    }
    printf("\n");

    return 0;
}


""";

  static const String code_23 = r"""

#include <stdio.h>

int main() {
    double base;
    int exponent;

    printf("Enter the base number: ");
    scanf("%lf", &base);

    printf("Enter the exponent: ");
    scanf("%d", &exponent);

    double result = 1.0;

    for (int i = 0; i < abs(exponent); i++) {
        result *= base;
    }

    if (exponent < 0) {
        result = 1.0 / result;
    }

    printf("Result: %.2lf\n", result);

    return 0;
}

""";

  static const String code_24 = r"""

#include <stdio.h>

#define PI 3.14159

int main() {
    double radius;
    double area;

    printf("Enter the radius of the circle: ");
    scanf("%lf", &radius);

    area = PI * radius * radius;

    printf("The area of the circle is: %.2lf\n", area);

    return 0;
}


""";

  static const String code_25 = r"""

#include <stdio.h>

int main() {
    char ch;

    printf("Enter a character: ");
    scanf("%c", &ch);

    if ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')) {
        printf("%c is an alphabet.\n", ch);
    } else {
        printf("%c is not an alphabet.\n", ch);
    }

    return 0;
}


""";

  static const String code_26 = r"""

#include <stdio.h>
#include <math.h>

int isPerfectSquare(int num) {
    int sqrtNum = sqrt(num);
    return (sqrtNum * sqrtNum == num);
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (isPerfectSquare(number)) {
        printf("%d is a perfect square.\n", number);
    } else {
        printf("%d is not a perfect square.\n", number);
    }

    return 0;
}

""";

  static const String code_27 = r"""

#include <stdio.h>
#include <stdio.h>

int main() {
    float principal, rate, time, interest;

    printf("Enter the principal amount: ");
    scanf("%f", &principal);

    printf("Enter the interest rate: ");
    scanf("%f", &rate);

    printf("Enter the time period (in years): ");
    scanf("%f", &time);

    interest = (principal * rate * time) / 100;

    printf("Simple Interest: %.2f\n", interest);

    return 0;
}

""";

  static const String code_28 = r"""

#include <stdio.h>

int main() {
    float length, width, area;

    printf("Enter the length of the rectangle: ");
    scanf("%f", &length);

    printf("Enter the width of the rectangle: ");
    scanf("%f", &width);

    area = length * width;

    printf("The area of the rectangle is: %.2f\n", area);

    return 0;
}
""";

  static const String code_29 = r"""

#include <stdio.h>

int main() {
    int number, originalNumber, remainder, sum = 0;

    printf("Enter a number: ");
    scanf("%d", &number);

    originalNumber = number;

    while (number != 0) {
        remainder = number % 10;
        sum += remainder * remainder * remainder;
        number /= 10;
    }

    if (sum == originalNumber) {
        printf("%d is an Armstrong number.\n", originalNumber);
    } else {
        printf("%d is not an Armstrong number.\n", originalNumber);
    }

    return 0;
}


""";

  static const String code_30 = r"""

#include <stdio.h>

int main() {
    float base, height, area;

    printf("Enter the base length of the triangle: ");
    scanf("%f", &base);

    printf("Enter the height of the triangle: ");
    scanf("%f", &height);

    area = (base * height) / 2;

    printf("The area of the triangle is: %.2f\n", area);

    return 0;
}


""";

  static const String code_31 = r"""

#include <stdio.h>

int main() {
    int number, sum = 0;

    printf("Enter a number: ");
    scanf("%d", &number);

    for (int i = 1; i < number; i++) {
        if (number % i == 0) {
            sum += i;
        }
    }

    if (sum == number) {
        printf("%d is a perfect number.\n", number);
    } else {
        printf("%d is not a perfect number.\n", number);
    }

    return 0;
}


""";

  static const String code_32 = r"""

#include <stdio.h>
#include <math.h>

int main() {
    float principal, rate, time, compoundInterest;

    printf("Enter the principal amount: ");
    scanf("%f", &principal);

    printf("Enter the interest rate (in percentage): ");
    scanf("%f", &rate);

    printf("Enter the time period (in years): ");
    scanf("%f", &time);

    rate = rate / 100; // Convert rate to decimal

    compoundInterest = principal * pow((1 + rate), time) - principal;

    printf("Compound Interest: %.2f\n", compoundInterest);

    return 0;
}


""";

  static const String code_33 = r"""

#include <stdio.h>

int main() {
    int number, originalNumber, digit, i, factorial, sum = 0;

    printf("Enter a number: ");
    scanf("%d", &number);

    originalNumber = number;

    while (number != 0) {
        digit = number % 10;
        factorial = 1;

        for (i = 2; i <= digit; i++) {
            factorial *= i;
        }

        sum += factorial;
        number /= 10;
    }

    if (sum == originalNumber) {
        printf("%d is a strong number.\n", originalNumber);
    } else {
        printf("%d is not a strong number.\n", originalNumber);
    }

    return 0;
}


""";

  static const String code_34 = r"""

#include <stdio.h>

int main() {
    int decimalNumber, quotient, i = 1;
    int octalNumber[100];

    printf("Enter a decimal number: ");
    scanf("%d", &decimalNumber);

    quotient = decimalNumber;

    while (quotient != 0) {
        octalNumber[i] = quotient % 8;
        quotient = quotient / 8;
        i++;
    }

    printf("Octal representation of %d is: ", decimalNumber);

    for (int j = i - 1; j > 0; j--) {
        printf("%d", octalNumber[j]);
    }

    printf("\n");

    return 0;
}

""";

  static const String code_35 = r"""
  
#include <stdio.h>

int main() {
    int number, digit, sum = 0;

    printf("Enter a number: ");
    scanf("%d", &number);

    while (number != 0) {
        digit = number % 10;
        sum += digit;
        number /= 10;
    }

    printf("Sum of the digits: %d\n", sum);

    return 0;
}

""";

  static const String code_36 = r"""
  
#include <stdio.h>

int main() {
    float side, area;

    printf("Enter the side length of the square: ");
    scanf("%f", &side);

    area = side * side;

    printf("Area of the square: %.2f\n", area);

    return 0;
}
""";

  static const String code_37 = r"""
  
#include <stdio.h>

int main() {
    int number, originalNumber, sum = 0, digit;

    printf("Enter a number: ");
    scanf("%d", &number);

    originalNumber = number;

    while (number != 0) {
        digit = number % 10;
        sum += digit;
        number /= 10;
    }

    if (originalNumber % sum == 0) {
        printf("%d is a Harshad number.\n", originalNumber);
    } else {
        printf("%d is not a Harshad number.\n", originalNumber);
    }

    return 0;
}
""";

  static const String code_38 = r"""
  
#include <stdio.h>

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    printf("Factors of %d are: ", number);

    for (int i = 1; i <= number; i++) {
        if (number % i == 0) {
            printf("%d ", i);
        }
    }

    printf("\n");

    return 0;
}
""";

  static const String code_39 = r"""
  
#include <stdio.h>

int main() {
    long long binaryNumber;
    int decimalNumber = 0, base = 1, remainder;

    printf("Enter a binary number: ");
    scanf("%lld", &binaryNumber);

    while (binaryNumber != 0) {
        remainder = binaryNumber % 10;
        decimalNumber += remainder * base;
        binaryNumber /= 10;
        base *= 2;
    }

    printf("Decimal equivalent: %d\n", decimalNumber);

    return 0;
}
""";

  static const String code_40 = r"""
#include <stdio.h>

int main() {
    int number, square, digit, sum = 0;

    printf("Enter a number: ");
    scanf("%d", &number);

    square = number * number;

    while (square != 0) {
        digit = square % 10;
        sum += digit;
        square /= 10;
    }

    if (sum == number) {
        printf("%d is a Neon number.\n", number);
    } else {
        printf("%d is not a Neon number.\n", number);
    }

    return 0;
}

""";



  static const String code_op_1 = """
Hello, World!
""";

  static const String code_op_2 = """
My name is "C Programs".
""";

  static const String code_op_3 = """
1 2 3 4 5 6 7 8 9 10
""";

  static const String code_op_4 = """
Enter a number: 10
You entered: 10
""";

  static const String code_op_5 = """
Enter the first number: 5
Enter the second number: 3
The sum of 5 and 3 is: 8

""";

  static const String code_op_6 = """
Enter a number: 7
7 is an odd number.

""";

  static const String code_op_7 = """
 Enter the first number: 8
Enter the second number: 12
The maximum number is: 12

""";

  static const String code_op_8 = """
Enter the first number: 8
Enter the second number: 12
The minimum number is: 8


""";

  static const String code_op_9 = """
Enter the first number: 5
Enter the second number: 8
Before swapping: num1 = 5, num2 = 8
After swapping: num1 = 8, num2 = 5

""";

  static const String code_op_10 = """
Enter a year: 2020
2020 is a leap year.


""";

  static const String code_op_11 = """
Enter a non-negative integer: 6
Factorial of 6 is: 720


""";

  static const String code_op_12 = """

Enter a number: 5
Multiplication table for 5:
5 x 1 = 5
5 x 2 = 10
5 x 3 = 15
5 x 4 = 20
5 x 5 = 25
5 x 6 = 30
5 x 7 = 35
5 x 8 = 40
5 x 9 = 45
5 x 10 = 50
""";

  static const String code_op_13 = """
Enter the first number: 5.5
Enter the second number: 6.25
Enter the third number: 7.75
The average of 5.50, 6.25, and 7.75 is: 6.50

""";

  static const String code_op_14 = """
Enter a number: -7
The number is negative.


""";

  static const String code_op_15 = """
Enter a number: 8
The square of 8 is: 64

""";

  static const String code_op_16 = """
Enter a number: 5
The cube of 5 is: 125

""";

  static const String code_op_17 = """
Enter a positive integer: 17
17 is a prime number.


""";

  static const String code_op_18 = """
Enter a positive integer: 5
The sum of natural numbers up to 5 is: 15

""";

  static const String code_op_19 = """
Enter the number of terms: 8
Fibonacci series up to 8 terms: 0, 1, 1, 2, 3, 5, 8, 13

""";

  static const String code_op_20 = """
Enter a number: 12321
12321 is a palindrome.

""";

  static const String code_op_21 = """
Enter a string: Hello, World!
Original string: Hello, World!
Reversed string: !dlroW ,olleH

""";

  static const String code_op_22 = """
Enter a decimal number: 27
Binary representation: 11011


""";

  static const String code_op_23 = """
Enter the base number: 2.5
Enter the exponent: 3
Result: 15.63

""";

  static const String code_op_24 = """
Enter the radius of the circle: 5.2
The area of the circle is: 84.95

""";

  static const String code_op_25 = """
Enter a character: A
A is an alphabet.
""";

  static const String code_op_26 = """
Enter a number: 25
25 is a perfect square.
""";

  static const String code_op_27 = """
Enter the principal amount: 5000
Enter the interest rate: 7.5
Enter the time period (in years): 3
Simple Interest: 1125.00
""";

  static const String code_op_28 = """
Enter the length of the rectangle: 5.2
Enter the width of the rectangle: 3.8
The area of the rectangle is: 19.76
""";

  static const String code_op_29 = """
Enter a number: 153
153 is an Armstrong number.
""";

  static const String code_op_30 = """
Enter the base length of the triangle: 6.2
Enter the height of the triangle: 4.8
The area of the triangle is: 14.88
""";

  static const String code_op_31 = """
Enter a number: 28
28 is a perfect number.
""";

  static const String code_op_32 = """
Enter the principal amount: 5000
Enter the interest rate (in percentage): 7.5
Enter the time period (in years): 3
Compound Interest: 1145.03
""";

  static const String code_op_33 = """
Enter a number: 145
145 is a strong number.
""";

  static const String code_op_34 = """
Enter a decimal number: 83
Octal representation of 83 is: 123
""";

  static const String code_op_35 = """
Enter a number: 456
Sum of the digits: 15
""";

  static const String code_op_36 = """
Enter the side length of the square: 5.5
Area of the square: 30.25
""";

  static const String code_op_37 = """
Enter a number: 18
18 is a Harshad number.
""";

  static const String code_op_38 = """
Enter a number: 12
Factors of 12 are: 1 2 3 4 6 12.
""";

  static const String code_op_39 = """
Enter a binary number: 101010
Decimal equivalent: 42
""";

  static const String code_op_40 = """
Enter a number: 9
9 is a Neon number.
""";



  static final syntaxViews = {
    "Standard": SyntaxView(
      code:  code_1 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_2 = {
    "Standard": SyntaxView(
      code:  code_2 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_3 = {
    "Standard": SyntaxView(
      code:  code_3 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_4 = {
    "Standard": SyntaxView(
      code:  code_4 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_5 = {
    "Standard": SyntaxView(
      code:  code_5 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_6 = {
    "Standard": SyntaxView(
      code:  code_6 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_7 = {
    "Standard": SyntaxView(
      code:  code_7 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_8 = {
    "Standard": SyntaxView(
      code:  code_8 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_9 = {
    "Standard": SyntaxView(
      code:  code_9 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_10 = {
    "Standard": SyntaxView(
      code:  code_10 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_11 = {
    "Standard": SyntaxView(
      code:  code_11 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_12 = {
    "Standard": SyntaxView(
      code:  code_12 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_13 = {
    "Standard": SyntaxView(
      code:  code_13 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_14 = {
    "Standard": SyntaxView(
      code:  code_14 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_15 = {
    "Standard": SyntaxView(
      code:  code_15 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_16 = {
    "Standard": SyntaxView(
      code:  code_16 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_17 = {
    "Standard": SyntaxView(
      code:  code_17 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_18 = {
    "Standard": SyntaxView(
      code:  code_18 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_19 = {
    "Standard": SyntaxView(
      code:  code_19 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_20 = {
    "Standard": SyntaxView(
      code:  code_20 ,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_21 = {
    "Standard": SyntaxView(
      code:  code_21,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_22 = {
    "Standard": SyntaxView(
      code:  code_22,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_23 = {
    "Standard": SyntaxView(
      code:  code_23,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_24 = {
    "Standard": SyntaxView(
      code:  code_24,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_25 = {
    "Standard": SyntaxView(
      code:  code_25,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_26 = {
    "Standard": SyntaxView(
      code:  code_26,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_27 = {
    "Standard": SyntaxView(
      code:  code_27,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_28 = {
    "Standard": SyntaxView(
      code:  code_28,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_29 = {
    "Standard": SyntaxView(
      code:  code_29,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_30 = {
    "Standard": SyntaxView(
      code:  code_30,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_31 = {
    "Standard": SyntaxView(
      code:  code_31,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_32 = {
    "Standard": SyntaxView(
      code:  code_32,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_33 = {
    "Standard": SyntaxView(
      code:  code_33,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_34 = {
    "Standard": SyntaxView(
      code:  code_34,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_35 = {
    "Standard": SyntaxView(
      code:  code_35,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_36 = {
    "Standard": SyntaxView(
      code:  code_36,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_37 = {
    "Standard": SyntaxView(
      code:  code_37,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_38 = {
    "Standard": SyntaxView(
      code:  code_38,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_39 = {
    "Standard": SyntaxView(
      code:  code_39,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_40 = {
    "Standard": SyntaxView(
      code:  code_40,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };


  @override
  Widget build(BuildContext context) {

    if(listIndex == 0)
    {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("C Programs"),
            elevation: 6,
          ),
          body: Column(
            children: [

              Expanded(
                child: ListView.builder(
                    itemCount: syntaxViews.length,
                    itemBuilder: (BuildContext context, int index) {
                      String themeName = syntaxViews.keys.elementAt(index);
                      SyntaxView syntaxView = syntaxViews.values.elementAt(index);
                      return Card(
                        margin: const EdgeInsets.all(10),
                        elevation: 1.0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                        "Hello World Program",

                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))



                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            if (syntaxView.expanded)
                              Container(
                                  height: MediaQuery.of(context).size.height / 4.0,
                                  child: syntaxView)
                            else
                              syntaxView,
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Text(
                                            "Output",
                                            style: GoogleFonts.openSans(textStyle: TextStyle(
                                              fontSize: 16,
                                              color: kmarooncolor,
                                              fontWeight: FontWeight.w600,))



                                        ),


                                      ],
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(code_op_1,
                                            style: GoogleFonts.openSans(textStyle: TextStyle(
                                              fontSize: 16,
                                              color: kthirdcolor,
                                              fontWeight: FontWeight.w600,))

                                        )),
                                  )

                                ],
                              ),
                            )

                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
          bottomNavigationBar:

          Container(
            height: 64,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _copyToClipboard(
                        code_1);
                  },

                  child: Container(
                    width: 66,
                    color: kprimarycolor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(height: 5,),
                        Icon(Icons.copy, color: Colors.white),
                        Container(height: 5,),
                        Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                    _share(code_1); // Share the additional information

                  },
                  child: Container(
                    width: 80,
                    color: kprimarycolor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Container(height: 5,),
                        Icon(Icons.share, color: Colors.white),
                        Container(height: 5,),

                        Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                      height: 66,
                      color: kmarooncolor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.lock_outline, color: Colors.white),
                          Container(width: 10,),
                          Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                          Container(width: 10,),
                          Icon(Icons.download, color: Colors.white),
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),

        );

      }
    else if(listIndex == 1)
    {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("C Programs"),
            elevation: 6,
          ),
          body: Column(
            children: [

              Expanded(
                child: ListView.builder(
                    itemCount: syntaxViews_2.length,
                    itemBuilder: (BuildContext context, int index) {
                      SyntaxView syntaxView_2 = syntaxViews_2.values.elementAt(index);
                      return Card(
                        margin: const EdgeInsets.all(10),
                        elevation: 1.0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                        "Print Your name",
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))



                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            if (syntaxView_2.expanded)
                              Container(
                                  height: MediaQuery.of(context).size.height / 4.0,
                                  child: syntaxView_2)
                            else
                              syntaxView_2,
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Text(
                                            "Output",
                                            style: GoogleFonts.openSans(textStyle: TextStyle(
                                              fontSize: 16,
                                              color: kmarooncolor,
                                              fontWeight: FontWeight.w600,))



                                        ),


                                      ],
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(code_op_2,
                                            style: GoogleFonts.openSans(textStyle: TextStyle(
                                              fontSize: 16,
                                              color: kthirdcolor,
                                              fontWeight: FontWeight.w600,))

                                        )),
                                  )

                                ],
                              ),
                            )

                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
          bottomNavigationBar:

          Container(
            height: 64,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _copyToClipboard(
                        code_2);
                  },

                  child: Container(
                    width: 66,
                    color: kprimarycolor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(height: 5,),
                        Icon(Icons.copy, color: Colors.white),
                        Container(height: 5,),
                        Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                    _share(code_2); // Share the additional information

                  },
                  child: Container(
                    width: 80,
                    color: kprimarycolor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Container(height: 5,),
                        Icon(Icons.share, color: Colors.white),
                        Container(height: 5,),

                        Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                      height: 66,
                      color: kmarooncolor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.lock_outline, color: Colors.white),
                          Container(width: 10,),
                          Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                          Container(width: 10,),
                          Icon(Icons.download, color: Colors.white),
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),

        );

      }
    else if(listIndex == 2)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_3.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_3 = syntaxViews_3.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Print numbers from 1 to 10",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))



                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_3.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 3,
                                child: syntaxView_3)
                          else
                            syntaxView_3,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_3,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_3);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_3); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 3)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_4.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_4 = syntaxViews_4.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Takes input from the user and displays",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))



                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_4.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 3,
                                child: syntaxView_4)
                          else
                            syntaxView_4,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_4,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_4);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_4); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 4)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_5.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_5 = syntaxViews_5.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate the Sum of Two Numbers",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))



                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_5.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
                                child: syntaxView_5)
                          else
                            syntaxView_5,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_5,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_5);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_5); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 5)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_6.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_6 = syntaxViews_6.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check Even or Odd",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_6.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
                                child: syntaxView_6)
                          else
                            syntaxView_6,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_6,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_6);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_6); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 6)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_7.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_7 = syntaxViews_7.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Find the Maximum of Two Numbers",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_7.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.2,
                                child: syntaxView_7)
                          else
                            syntaxView_7,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_7,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_7);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_7); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 7)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_8.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_8 = syntaxViews_8.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Find the Minimum of Two Numbers",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_8.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.2,
                                child: syntaxView_8)
                          else
                            syntaxView_8,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_8,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_8);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_8); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 8)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_9.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_9 = syntaxViews_9.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Swap two numbers",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_9.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_9)
                          else
                            syntaxView_9,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_9,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_9);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_9); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 9)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_10.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_10 = syntaxViews_10.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check leap year",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_10.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_10)
                          else
                            syntaxView_10,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_10,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_10);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_10); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 10)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_11.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_11 = syntaxViews_11.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate factorial of a number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_11.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_11)
                          else
                            syntaxView_11,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_11,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_11);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_11); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 11)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_12.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_12 = syntaxViews_12.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Generate multiplication table",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_12.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
                                child: syntaxView_12)
                          else
                            syntaxView_12,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_12,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_12);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_12); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 12)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_13.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_13 = syntaxViews_13.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate the average of three numbers",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_13.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_13)
                          else
                            syntaxView_13,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_13,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_13);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_13); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 13)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_14.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_14 = syntaxViews_14.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check if a Number is Positive or Negative",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_14.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_14)
                          else
                            syntaxView_14,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_14,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_14);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_14); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 14)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_15.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_15 = syntaxViews_15.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate the Square of a Number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_15.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 3,
                                child: syntaxView_15)
                          else
                            syntaxView_15,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_15,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_15);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_15); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 15)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_16.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_16 = syntaxViews_16.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate the cube of a Number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_16.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 3,
                                child: syntaxView_16)
                          else
                            syntaxView_16,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_16,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_16);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_16); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 16)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_17.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_17 = syntaxViews_17.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check if a number is prime",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_17.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.7,
                                child: syntaxView_17)
                          else
                            syntaxView_17,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_17,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_17);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_17); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );



    }
    else if(listIndex == 17)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_18.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_18 = syntaxViews_18.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Find the sum of natural number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_18.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_18)
                          else
                            syntaxView_18,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_18,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_18);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_18); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 18)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_19.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_19 = syntaxViews_19.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Generate fibonacci series",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_19.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_19)
                          else
                            syntaxView_19,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_19,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_19);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_19); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 19)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_20.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_20 = syntaxViews_20.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check palindrome number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_20.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_20)
                          else
                            syntaxView_20,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_20,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_20);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_20); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 20)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_21.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_21 = syntaxViews_21.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Reverse a String",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_21.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_21)
                          else
                            syntaxView_21,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_21,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_21);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_21); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 21)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_22.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_22 = syntaxViews_22.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Convert decimal to binary",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_22.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_22)
                          else
                            syntaxView_22,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_22,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_22);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_22); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 22)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_23.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_23 = syntaxViews_23.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate power of a number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_23.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.8,
                                child: syntaxView_23)
                          else
                            syntaxView_23,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_23,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_23);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_23); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 23)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_24.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_24 = syntaxViews_24.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate area of a circle",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_24.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
                                child: syntaxView_24)
                          else
                            syntaxView_24,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_24,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_24);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_24); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 24)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_25.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_25 = syntaxViews_25.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check if character is an Alphabet or not ",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_25.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
                                child: syntaxView_25)
                          else
                            syntaxView_25,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_25,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_25);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_25); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 25)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_26.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_26 = syntaxViews_26.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check if a number is a perfect square ",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_26.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
                                child: syntaxView_26)
                          else
                            syntaxView_26,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_26,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_26);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_26); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 26)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_27.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_27 = syntaxViews_27.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate simple interest",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_27.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_27)
                          else
                            syntaxView_27,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_27,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_27);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_27); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 27)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_28.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_28 = syntaxViews_28.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate area of a rectangle",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_28.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
                                child: syntaxView_28)
                          else
                            syntaxView_28,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_28,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_28);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_28); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 28)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_29.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_29 = syntaxViews_29.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check if a number is an armstrong number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_29.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.8,
                                child: syntaxView_29)
                          else
                            syntaxView_29,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_29,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_29);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_29); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 29)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_30.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_30 = syntaxViews_30.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate area of triangle",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_30.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
                                child: syntaxView_30)
                          else
                            syntaxView_30,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_30,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_30);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_30); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 30)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_31.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_31 = syntaxViews_31.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check if number is perfect number ",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_31.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_31)
                          else
                            syntaxView_31,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_31,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_31);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_31); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 31)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_32.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_32 = syntaxViews_32.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate compound interest",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_32.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_32)
                          else
                            syntaxView_32,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_32,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_32);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_32); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 32)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_33.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_33 = syntaxViews_33.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check if the number is strong number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_33.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_33)
                          else
                            syntaxView_33,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_33,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_33);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_33); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 33)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_34.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_34 = syntaxViews_34.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Convert decimal to octal",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_34.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.7,
                                child: syntaxView_34)
                          else
                            syntaxView_34,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_34,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_34);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_34); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 34)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_35.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_35 = syntaxViews_35.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate the sum of digit of a number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_35.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
                                child: syntaxView_35)
                          else
                            syntaxView_35,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_35,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_35);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_35); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 35)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_36.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_36 = syntaxViews_36.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Calculate  area of a square",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_36.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
                                child: syntaxView_36)
                          else
                            syntaxView_36,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_36,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_36);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_36); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 36)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_37.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_37 = syntaxViews_37.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check if a number is a harshad number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_37.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.8,
                                child: syntaxView_37)
                          else
                            syntaxView_37,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_37,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_37);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_37); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 37)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_38.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_38 = syntaxViews_38.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Find the factors if a number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_38.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.2,
                                child: syntaxView_38)
                          else
                            syntaxView_38,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_38,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_38);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_38); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 38)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_39.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_39 = syntaxViews_39.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Convert decimal to binary",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_39.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.2,
                                child: syntaxView_39)
                          else
                            syntaxView_39,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_39,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_39);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_39); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else if(listIndex == 39)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("C Programs"),
          elevation: 6,
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: syntaxViews_40.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_40 = syntaxViews_40.values.elementAt(index);
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "Check if a number is a neon number",
                                      style: GoogleFonts.openSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: kmarooncolor,
                                        fontWeight: FontWeight.w600,))


                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_40.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_40)
                          else
                            syntaxView_40,
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                          "Output",
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kmarooncolor,
                                            fontWeight: FontWeight.w600,))



                                      ),


                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(code_op_40,
                                          style: GoogleFonts.openSans(textStyle: TextStyle(
                                            fontSize: 16,
                                            color: kthirdcolor,
                                            fontWeight: FontWeight.w600,))

                                      )),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:

        Container(
          height: 64,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _copyToClipboard(
                      code_40);
                },

                child: Container(
                  width: 66,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 5,),
                      Icon(Icons.copy, color: Colors.white),
                      Container(height: 5,),
                      Text("Copy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  _share(code_40); // Share the additional information

                },
                child: Container(
                  width: 80,
                  color: kprimarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(height: 5,),
                      Icon(Icons.share, color: Colors.white),
                      Container(height: 5,),

                      Text("Share", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 66,
                    color: kmarooncolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white),
                        Container(width: 10,),
                        Text("Download file", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        Container(width: 10,),
                        Icon(Icons.download, color: Colors.white),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),

      );

    }
    else{
      return Container();
    }
  }

  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Code has been copied to clipboard')),
    );
  }


  void _share(String text) {
    Share.share("$text\n$androidShareText\n$androidAppShareLink"); // Share the provided text
  }


}
