import 'package:c_programs/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

class DetailScreenMath extends StatefulWidget {


  final int listIndex;
  final String program_name;


  const DetailScreenMath({Key? key,required this.listIndex,required this.program_name}) : super(key: key);

  @override
  State<DetailScreenMath> createState() => _DetailScreenMathState(listIndex,program_name);


}

class _DetailScreenMathState extends State<DetailScreenMath> {


  final int listIndex;
  final String program_name;


  _DetailScreenMathState(this.listIndex,this.program_name);

  static const String code_1 = r"""

#include <stdio.h>

int isPrime(int number) {
    if (number <= 1) {
        return 0;
    }

    for (int i = 2; i * i <= number; i++) {
        if (number % i == 0) {
            return 0;
        }
    }

    return 1;
}

int main() {
    int number;

    printf("Enter a positive integer: ");
    scanf("%d", &number);

    if (isPrime(number)) {
        printf("%d is a prime number.\n", number);
    } else {
        printf("%d is not a prime number.\n", number);
    }

    return 0;
}

""";

  static const String code_2 = r"""

#include <stdio.h>

void generateFibonacci(int n) {
    int first = 0, second = 1, next;

    printf("Fibonacci Series up to %d terms: ", n);

    for (int i = 0; i < n; i++) {
        printf("%d ", first);
        next = first + second;
        first = second;
        second = next;
    }
}

int main() {
    int n;

    printf("Enter the number of terms: ");
    scanf("%d", &n);

    generateFibonacci(n);

    return 0;
}


""";

  static const String code_3 = r"""

#include <stdio.h>
#include <math.h>

int isArmstrong(int number) {
    int originalNumber, remainder, result = 0, n = 0;

    originalNumber = number;

    // Calculate the number of digits
    while (originalNumber != 0) {
        originalNumber /= 10;
        ++n;
    }

    originalNumber = number;

    // Calculate the Armstrong number
    while (originalNumber != 0) {
        remainder = originalNumber % 10;
        result += pow(remainder, n);
        originalNumber /= 10;
    }

    // Check if the number is Armstrong or not
    if (result == number) {
        return 1; // Armstrong number
    } else {
        return 0; // Not an Armstrong number
    }
}

int main() {
    int start, end;

    printf("Enter the range (start end): ");
    scanf("%d %d", &start, &end);

    printf("Armstrong numbers in the range %d to %d are: ", start, end);
    for (int i = start; i <= end; i++) {
        if (isArmstrong(i)) {
            printf("%d ", i);
        }
    }

    return 0;
}


""";

  static const String code_4 = r"""

#include <stdio.h>

int isPalindrome(int number) {
    int originalNumber, reverseNumber = 0, remainder;

    originalNumber = number;

    // Reverse the number
    while (originalNumber != 0) {
        remainder = originalNumber % 10;
        reverseNumber = reverseNumber * 10 + remainder;
        originalNumber /= 10;
    }

    // Check if the number is palindrome or not
    if (reverseNumber == number) {
        return 1; // Palindrome number
    } else {
        return 0; // Not a palindrome number
    }
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (isPalindrome(number)) {
        printf("%d is a palindrome number.\n", number);
    } else {
        printf("%d is not a palindrome number.\n", number);
    }

    return 0;
}


""";

  static const String code_5 = r"""

#include <stdio.h>

int isPerfectNumber(int number) {
    int sum = 0;

    // Find proper divisors and calculate their sum
    for (int i = 1; i < number; i++) {
        if (number % i == 0) {
            sum += i;
        }
    }

    // Check if the sum of proper divisors is equal to the number
    if (sum == number) {
        return 1; // Perfect number
    } else {
        return 0; // Not a perfect number
    }
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (isPerfectNumber(number)) {
        printf("%d is a perfect number.\n", number);
    } else {
        printf("%d is not a perfect number.\n", number);
    }

    return 0;
}




""";

  static const String code_6 = r"""

#include <stdio.h>

unsigned long long factorial(int number) {
    unsigned long long result = 1;

    for (int i = 1; i <= number; i++) {
        result *= i;
    }

    return result;
}

int main() {
    int number;

    printf("Enter a positive integer: ");
    scanf("%d", &number);

    if (number < 0) {
        printf("Error: Factorial is not defined for negative numbers.\n");
    } else {
        unsigned long long fact = factorial(number);
        printf("Factorial of %d = %llu\n", number, fact);
    }

    return 0;
}


""";

  static const String code_7 = r"""

#include <stdio.h>

int gcd(int num1, int num2) {
    while (num2 != 0) {
        int temp = num2;
        num2 = num1 % num2;
        num1 = temp;
    }
    return num1;
}

int main() {
    int num1, num2;

    printf("Enter two positive integers: ");
    scanf("%d %d", &num1, &num2);

    if (num1 <= 0 || num2 <= 0) {
        printf("Error: Please enter positive integers.\n");
    } else {
        int result = gcd(num1, num2);
        printf("The GCD of %d and %d is %d\n", num1, num2, result);
    }

    return 0;
}


""";

  static const String code_8 = r"""

#include <stdio.h>

int gcd(int num1, int num2) {
    while (num2 != 0) {
        int temp = num2;
        num2 = num1 % num2;
        num1 = temp;
    }
    return num1;
}

int lcm(int num1, int num2) {
    int gcdResult = gcd(num1, num2);
    int lcmResult = (num1 * num2) / gcdResult;
    return lcmResult;
}

int main() {
    int num1, num2;

    printf("Enter two positive integers: ");
    scanf("%d %d", &num1, &num2);

    if (num1 <= 0 || num2 <= 0) {
        printf("Error: Please enter positive integers.\n");
    } else {
        int result = lcm(num1, num2);
        printf("The LCM of %d and %d is %d\n", num1, num2, result);
    }

    return 0;
}


""";

  static const String code_9 = r"""

#include <stdio.h>

int sumOfDigits(int number) {
    int sum = 0;

    while (number != 0) {
        int digit = number % 10;
        sum += digit;
        number /= 10;
    }

    return sum;
}

int main() {
    int number;

    printf("Enter a positive integer: ");
    scanf("%d", &number);

    if (number < 0) {
        printf("Error: Please enter a positive integer.\n");
    } else {
        int result = sumOfDigits(number);
        printf("The sum of digits of %d is %d.\n", number, result);
    }

    return 0;
}


""";

  static const String code_10 = r"""

#include <stdio.h>

int reverseNumber(int number) {
    int reverse = 0;

    while (number != 0) {
        int digit = number % 10;
        reverse = reverse * 10 + digit;
        number /= 10;
    }

    return reverse;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    int reversedNumber = reverseNumber(number);
    printf("The reverse of %d is %d.\n", number, reversedNumber);

    return 0;
}



""";

  static const String code_11 = r"""

#include <stdio.h>
#include <math.h>

int main() {
    double number;

    printf("Enter a number: ");
    scanf("%lf", &number);

    if (number < 0) {
        printf("Error: Square root is not defined for negative numbers.\n");
    } else {
        double result = sqrt(number);
        printf("The square root of %.2lf is %.2lf\n", number, result);
    }

    return 0;
}



""";

  static const String code_12 = r"""
#include <stdio.h>
#include <math.h>

int main() {
    double base, exponent;

    printf("Enter the base number: ");
    scanf("%lf", &base);

    printf("Enter the exponent: ");
    scanf("%lf", &exponent);

    double result = pow(base, exponent);

    printf("%.2lf raised to the power of %.2lf is %.2lf\n", base, exponent, result);

    return 0;
}


""";

  static const String code_13 = r"""

#include <stdio.h>
#include <math.h>

int convertBinaryToDecimal(long long binaryNumber) {
    int decimalNumber = 0, i = 0, remainder;

    while (binaryNumber != 0) {
        remainder = binaryNumber % 10;
        binaryNumber /= 10;
        decimalNumber += remainder * pow(2, i);
        ++i;
    }

    return decimalNumber;
}

int main() {
    long long binaryNumber;

    printf("Enter a binary number: ");
    scanf("%lld", &binaryNumber);

    int decimalNumber = convertBinaryToDecimal(binaryNumber);
    printf("Decimal equivalent: %d\n", decimalNumber);

    return 0;
}



""";

  static const String code_14 = r"""
#include <stdio.h>

long long convertDecimalToBinary(int decimalNumber) {
    long long binaryNumber = 0;
    int remainder, i = 1;

    while (decimalNumber != 0) {
        remainder = decimalNumber % 2;
        decimalNumber /= 2;
        binaryNumber += remainder * i;
        i *= 10;
    }

    return binaryNumber;
}

int main() {
    int decimalNumber;

    printf("Enter a decimal number: ");
    scanf("%d", &decimalNumber);

    long long binaryNumber = convertDecimalToBinary(decimalNumber);
    printf("Binary equivalent: %lld\n", binaryNumber);

    return 0;
}

""";

  static const String code_15 = r"""

#include <stdio.h>

void convertDecimalToHexadecimal(int decimalNumber) {
    char hexadecimalNumber[100];
    int i = 0, remainder;

    while (decimalNumber != 0) {
        remainder = decimalNumber % 16;
        if (remainder < 10)
            hexadecimalNumber[i] = remainder + '0';
        else
            hexadecimalNumber[i] = remainder + 55; // for A-F
        decimalNumber /= 16;
        i++;
    }

    printf("Hexadecimal equivalent: ");
    for (int j = i - 1; j >= 0; j--) {
        printf("%c", hexadecimalNumber[j]);
    }
    printf("\n");
}

int main() {
    int decimalNumber;

    printf("Enter a decimal number: ");
    scanf("%d", &decimalNumber);

    convertDecimalToHexadecimal(decimalNumber);

    return 0;
}


""";

  static const String code_16 = r"""

#include <stdio.h>
#include <math.h>
#include <string.h>

int convertHexadecimalToDecimal(char hexadecimalNumber[]) {
    int decimalNumber = 0, digit, power = 0, i;

    // Iterate through each character of the hexadecimal number
    for (i = strlen(hexadecimalNumber) - 1; i >= 0; i--) {
        // Convert the hexadecimal digit to its decimal value
        if (hexadecimalNumber[i] >= '0' && hexadecimalNumber[i] <= '9') {
            digit = hexadecimalNumber[i] - '0';
        } else if (hexadecimalNumber[i] >= 'A' && hexadecimalNumber[i] <= 'F') {
            digit = hexadecimalNumber[i] - 'A' + 10;
        } else if (hexadecimalNumber[i] >= 'a' && hexadecimalNumber[i] <= 'f') {
            digit = hexadecimalNumber[i] - 'a' + 10;
        } else {
            printf("Error: Invalid hexadecimal number.\n");
            return 0;
        }

        // Update the decimal number by adding the contribution of the current digit
        decimalNumber += digit * pow(16, power);
        power++;
    }

    return decimalNumber;
}

int main() {
    char hexadecimalNumber[100];

    printf("Enter a hexadecimal number: ");
    scanf("%s", hexadecimalNumber);

    int decimalNumber = convertHexadecimalToDecimal(hexadecimalNumber);
    printf("Decimal equivalent: %d\n", decimalNumber);

    return 0;
}



""";

  static const String code_17 = r"""
#include <stdio.h>

void convertDecimalToOctal(int decimalNumber) {
    int octalNumber[100];
    int i = 0;

    while (decimalNumber != 0) {
        octalNumber[i] = decimalNumber % 8;
        decimalNumber /= 8;
        i++;
    }

    printf("Octal equivalent: ");
    for (int j = i - 1; j >= 0; j--) {
        printf("%d", octalNumber[j]);
    }
    printf("\n");
}

int main() {
    int decimalNumber;

    printf("Enter a decimal number: ");
    scanf("%d", &decimalNumber);

    convertDecimalToOctal(decimalNumber);

    return 0;
}



""";

  static const String code_18 = r"""

#include <stdio.h>
#include <math.h>
#include <string.h>

int convertOctalToDecimal(char octalNumber[]) {
    int decimalNumber = 0, digit, power = 0, i;

    // Iterate through each character of the octal number
    for (i = strlen(octalNumber) - 1; i >= 0; i--) {
        // Convert the octal digit to its decimal value
        if (octalNumber[i] >= '0' && octalNumber[i] <= '7') {
            digit = octalNumber[i] - '0';
        } else {
            printf("Error: Invalid octal number.\n");
            return 0;
        }

        // Update the decimal number by adding the contribution of the current digit
        decimalNumber += digit * pow(8, power);
        power++;
    }

    return decimalNumber;
}

int main() {
    char octalNumber[100];

    printf("Enter an octal number: ");
    scanf("%s", octalNumber);

    int decimalNumber = convertOctalToDecimal(octalNumber);
    printf("Decimal equivalent: %d\n", decimalNumber);

    return 0;
}


""";

  static const String code_19 = r"""

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int n, i;

    printf("Enter the number of random numbers to generate: ");
    scanf("%d", &n);

    // Set the seed value for the random number generator
    srand(time(NULL));

    printf("Random numbers: ");
    for (i = 0; i < n; i++) {
        printf("%d ", rand());
    }
    printf("\n");

    return 0;
}


""";

  static const String code_20 = r"""

#include <stdio.h>

// Function to swap two numbers
void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

// Bubble Sort
void bubbleSort(int arr[], int n) {
    int i, j;
    for (i = 0; i < n - 1; i++) {
        for (j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                swap(&arr[j], &arr[j + 1]);
            }
        }
    }
}

// Selection Sort
void selectionSort(int arr[], int n) {
    int i, j, minIndex;
    for (i = 0; i < n - 1; i++) {
        minIndex = i;
        for (j = i + 1; j < n; j++) {
            if (arr[j] < arr[minIndex]) {
                minIndex = j;
            }
        }
        swap(&arr[i], &arr[minIndex]);
    }
}

// Function to print the array
void printArray(int arr[], int n) {
    int i;
    for (i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main() {
    int arr[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(arr) / sizeof(arr[0]);

    printf("Original array: ");
    printArray(arr, n);

    printf("Sorting using Bubble Sort...\n");
    bubbleSort(arr, n);
    printf("Sorted array (Bubble Sort): ");
    printArray(arr, n);

    printf("Sorting using Selection Sort...\n");
    selectionSort(arr, n);
    printf("Sorted array (Selection Sort): ");
    printArray(arr, n);

    return 0;
}


""";

  static const String code_21 = r"""

#include <stdio.h>
#include <math.h>

int isArmstrongNumber(int number) {
    int originalNumber, remainder, result = 0, n = 0;

    originalNumber = number;

    while (originalNumber != 0) {
        originalNumber /= 10;
        ++n;
    }

    originalNumber = number;

    while (originalNumber != 0) {
        remainder = originalNumber % 10;
        result += pow(remainder, n);
        originalNumber /= 10;
    }

    if (result == number) {
        return 1; // True, it's an Armstrong number
    } else {
        return 0; // False, it's not an Armstrong number
    }
}

void findArmstrongNumbersInRange(int start, int end) {
    int number;

    printf("Armstrong numbers in the range %d to %d:\n", start, end);

    for (number = start; number <= end; ++number) {
        if (isArmstrongNumber(number)) {
            printf("%d\n", number);
        }
    }
}

int main() {
    int start, end;

    printf("Enter the starting number: ");
    scanf("%d", &start);

    printf("Enter the ending number: ");
    scanf("%d", &end);

    findArmstrongNumbersInRange(start, end);

    return 0;
}



""";

  static const String code_22 = r"""

#include <stdio.h>
#include <math.h>

int isPrime(int number) {
    if (number <= 1) {
        return 0; // Not a prime number
    }

    int i;
    for (i = 2; i <= sqrt(number); ++i) {
        if (number % i == 0) {
            return 0; // Not a prime number
        }
    }

    return 1; // Prime number
}

int isPalindrome(int number) {
    int originalNumber = number;
    int reversedNumber = 0;

    while (number != 0) {
        int remainder = number % 10;
        reversedNumber = reversedNumber * 10 + remainder;
        number /= 10;
    }

    if (originalNumber == reversedNumber) {
        return 1; // Palindrome number
    } else {
        return 0; // Not a palindrome number
    }
}

void generatePalindromicPrimes(int count) {
    printf("Palindromic Prime Numbers:\n");

    int number = 2;
    int found = 0;

    while (found < count) {
        if (isPrime(number) && isPalindrome(number)) {
            printf("%d\n", number);
            ++found;
        }
        ++number;
    }
}

int main() {
    int count;

    printf("Enter the number of palindromic primes to generate: ");
    scanf("%d", &count);

    generatePalindromicPrimes(count);

    return 0;
}


""";

  static const String code_23 = r"""

#include <stdio.h>

int isPerfectNumber(int number) {
    int sum = 0;
    int i;

    for (i = 1; i <= number / 2; ++i) {
        if (number % i == 0) {
            sum += i;
        }
    }

    if (sum == number) {
        return 1; // True, it's a perfect number
    } else {
        return 0; // False, it's not a perfect number
    }
}

void findPerfectNumbersInRange(int start, int end) {
    int number;

    printf("Perfect numbers in the range %d to %d:\n", start, end);

    for (number = start; number <= end; ++number) {
        if (isPerfectNumber(number)) {
            printf("%d\n", number);
        }
    }
}

int main() {
    int start, end;

    printf("Enter the starting number: ");
    scanf("%d", &start);

    printf("Enter the ending number: ");
    scanf("%d", &end);

    findPerfectNumbersInRange(start, end);

    return 0;
}


""";

  static const String code_24 = r"""

#include <stdio.h>
#include <gmp.h>

void calculateFactorial(int n) {
    mpz_t factorial;
    mpz_init(factorial);

    mpz_fac_ui(factorial, n);

    printf("Factorial of %d:\n", n);
    mpz_out_str(stdout, 10, factorial);
    printf("\n");

    mpz_clear(factorial);
}

int main() {
    int n;

    printf("Enter a number to calculate its factorial: ");
    scanf("%d", &n);

    calculateFactorial(n);

    return 0;
}


""";

  static const String code_25 = r"""

#include <stdio.h>

// Function to calculate the GCD of two numbers
int calculateGCD(int a, int b) {
    if (b == 0) {
        return a;
    } else {
        return calculateGCD(b, a % b);
    }
}

// Function to calculate the GCD of multiple numbers
int calculateGCDOfMultipleNumbers(int arr[], int n) {
    int gcd = arr[0];
    int i;

    for (i = 1; i < n; ++i) {
        gcd = calculateGCD(gcd, arr[i]);
    }

    return gcd;
}

int main() {
    int arr[] = {24, 36, 48, 60};
    int n = sizeof(arr) / sizeof(arr[0]);

    int gcd = calculateGCDOfMultipleNumbers(arr, n);

    printf("GCD: %d\n", gcd);

    return 0;
}


""";

  static const String code_26 = r"""

#include <stdio.h>

// Function to calculate the GCD of two numbers
int calculateGCD(int a, int b) {
    if (b == 0) {
        return a;
    } else {
        return calculateGCD(b, a % b);
    }
}

// Function to calculate the LCM of two numbers
int calculateLCM(int a, int b) {
    int gcd = calculateGCD(a, b);
    return (a * b) / gcd;
}

// Function to calculate the LCM of multiple numbers
int calculateLCMOfMultipleNumbers(int arr[], int n) {
    int lcm = arr[0];
    int i;

    for (i = 1; i < n; ++i) {
        lcm = calculateLCM(lcm, arr[i]);
    }

    return lcm;
}

int main() {
    int arr[] = {4, 6, 8, 10};
    int n = sizeof(arr) / sizeof(arr[0]);

    int lcm = calculateLCMOfMultipleNumbers(arr, n);

    printf("LCM: %d\n", lcm);

    return 0;
}

""";

  static const String code_27 = r"""

#include <stdio.h>

void calculateSumOfEvenAndOdd(int start, int end) {
    int sumEven = 0;
    int sumOdd = 0;

    for (int i = start; i <= end; ++i) {
        if (i % 2 == 0) {
            sumEven += i;
        } else {
            sumOdd += i;
        }
    }

    printf("Sum of even numbers: %d\n", sumEven);
    printf("Sum of odd numbers: %d\n", sumOdd);
}

int main() {
    int start, end;

    printf("Enter the starting number: ");
    scanf("%d", &start);

    printf("Enter the ending number: ");
    scanf("%d", &end);

    calculateSumOfEvenAndOdd(start, end);

    return 0;
}

""";

  static const String code_28 = r"""

#include <stdio.h>

int reverseDigits(int number) {
    int reversedNumber = 0;

    while (number != 0) {
        int remainder = number % 10;
        reversedNumber = reversedNumber * 10 + remainder;
        number /= 10;
    }

    return reversedNumber;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    int reversedNumber = reverseDigits(number);

    printf("Reversed number: %d\n", reversedNumber);

    return 0;
}

""";

  static const String code_29 = r"""

#include <stdio.h>

int countDigits(int number) {
    int count = 0;

    while (number != 0) {
        number /= 10;
        ++count;
    }

    return count;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    int digitCount = countDigits(number);

    printf("Number of digits: %d\n", digitCount);

    return 0;
}



""";

  static const String code_30 = r"""

#include <stdio.h>

int isPowerOfTwo(int number) {
    if (number <= 0) {
        return 0;
    }

    // A number is a power of two if it has only one bit set to 1
    // Using bitwise AND operation, if number & (number - 1) equals 0, then it is a power of two
    return (number & (number - 1)) == 0;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (isPowerOfTwo(number)) {
        printf("%d is a power of two\n", number);
    } else {
        printf("%d is not a power of two\n", number);
    }

    return 0;
}



""";

  static const String code_31 = r"""

#include <stdio.h>

int findNthFibonacci(int n) {
    if (n <= 0) {
        return -1; // Invalid input
    }

    if (n == 1 || n == 2) {
        return 1; // Base cases: Fibonacci numbers 1 and 2 are both 1
    }

    int prev1 = 1;
    int prev2 = 1;
    int current = 0;

    for (int i = 3; i <= n; ++i) {
        current = prev1 + prev2;
        prev1 = prev2;
        prev2 = current;
    }

    return current;
}

int main() {
    int n;

    printf("Enter the value of N: ");
    scanf("%d", &n);

    int nthFibonacci = findNthFibonacci(n);

    if (nthFibonacci == -1) {
        printf("Invalid input\n");
    } else {
        printf("The %dth Fibonacci number is: %d\n", n, nthFibonacci);
    }

    return 0;
}


""";

  static const String code_32 = r"""

#include <stdio.h>

int calculateSquare(int number) {
    return number * number;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    int square = calculateSquare(number);

    printf("Square of %d is: %d\n", number, square);

    return 0;
}



""";

  static const String code_33 = r"""

#include <stdio.h>

void decimalToRoman(int number) {
    if (number <= 0) {
        printf("Invalid input\n");
        return;
    }

    // Define arrays to store the decimal and corresponding Roman numeral values
    int decimalValues[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
    char* romanNumerals[] = {"M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"};

    int i = 0;

    while (number > 0) {
        if (number >= decimalValues[i]) {
            printf("%s", romanNumerals[i]);
            number -= decimalValues[i];
        } else {
            i++;
        }
    }

    printf("\n");
}

int main() {
    int number;

    printf("Enter a decimal number: ");
    scanf("%d", &number);

    decimalToRoman(number);

    return 0;
}


""";

  static const String code_34 = r"""

#include <stdio.h>

int romanToDecimal(char romanNumeral[]) {
    int decimalValue = 0;

    for (int i = 0; romanNumeral[i] != '\0'; ++i) {
        if (romanNumeral[i] == 'M') {
            decimalValue += 1000;
        } else if (romanNumeral[i] == 'D') {
            decimalValue += 500;
        } else if (romanNumeral[i] == 'C') {
            if (romanNumeral[i + 1] == 'M') {
                decimalValue += 900;
                i++;
            } else if (romanNumeral[i + 1] == 'D') {
                decimalValue += 400;
                i++;
            } else {
                decimalValue += 100;
            }
        } else if (romanNumeral[i] == 'L') {
            decimalValue += 50;
        } else if (romanNumeral[i] == 'X') {
            if (romanNumeral[i + 1] == 'C') {
                decimalValue += 90;
                i++;
            } else if (romanNumeral[i + 1] == 'L') {
                decimalValue += 40;
                i++;
            } else {
                decimalValue += 10;
            }
        } else if (romanNumeral[i] == 'V') {
            decimalValue += 5;
        } else if (romanNumeral[i] == 'I') {
            if (romanNumeral[i + 1] == 'X') {
                decimalValue += 9;
                i++;
            } else if (romanNumeral[i + 1] == 'V') {
                decimalValue += 4;
                i++;
            } else {
                decimalValue += 1;
            }
        }
    }

    return decimalValue;
}

int main() {
    char romanNumeral[50];

    printf("Enter a Roman numeral: ");
    scanf("%s", romanNumeral);

    int decimalValue = romanToDecimal(romanNumeral);

    printf("Decimal value: %d\n", decimalValue);

    return 0;
}



""";

  static const String code_35 = r"""
  
#include <stdio.h>
#include <math.h>

int binaryToOctal(long long binaryNumber) {
    int octalNumber = 0, decimalNumber = 0, i = 0;

    // Convert binary to decimal
    while (binaryNumber != 0) {
        decimalNumber += (binaryNumber % 10) * pow(2, i);
        ++i;
        binaryNumber /= 10;
    }

    i = 1;

    // Convert decimal to octal
    while (decimalNumber != 0) {
        octalNumber += (decimalNumber % 8) * i;
        decimalNumber /= 8;
        i *= 10;
    }

    return octalNumber;
}

int main() {
    long long binaryNumber;

    printf("Enter a binary number: ");
    scanf("%lld", &binaryNumber);

    if (binaryNumber < 0) {
        printf("Invalid input. Binary number cannot be negative.\n");
        return 0;
    }

    int octalNumber = binaryToOctal(binaryNumber);

    printf("Octal number: %d\n", octalNumber);

    return 0;
}


""";

  static const String code_36 = r"""
  
#include <stdio.h>
#include <math.h>

long long octalToBinary(int octalNumber) {
    int decimalNumber = 0, i = 0;
    long long binaryNumber = 0;

    // Convert octal to decimal
    while (octalNumber != 0) {
        decimalNumber += (octalNumber % 10) * pow(8, i);
        ++i;
        octalNumber /= 10;
    }

    i = 1;

    // Convert decimal to binary
    while (decimalNumber != 0) {
        binaryNumber += (decimalNumber % 2) * i;
        decimalNumber /= 2;
        i *= 10;
    }

    return binaryNumber;
}

int main() {
    int octalNumber;

    printf("Enter an octal number: ");
    scanf("%d", &octalNumber);

    if (octalNumber < 0) {
        printf("Invalid input. Octal number cannot be negative.\n");
        return 0;
    }

    long long binaryNumber = octalToBinary(octalNumber);

    printf("Binary number: %lld\n", binaryNumber);

    return 0;
}


""";

  static const String code_37 = r"""
  
#include <stdio.h>
#include <math.h>

long long hexadecimalToDecimal(char hexNumber[]) {
    int decimalNumber = 0, i = 0;

    // Convert hexadecimal to decimal
    while (hexNumber[i] != '\0') {
        // Check if the current character is a digit (0-9)
        if (hexNumber[i] >= '0' && hexNumber[i] <= '9') {
            decimalNumber = decimalNumber * 16 + (hexNumber[i] - '0');
        }
        // Check if the current character is an uppercase letter (A-F)
        else if (hexNumber[i] >= 'A' && hexNumber[i] <= 'F') {
            decimalNumber = decimalNumber * 16 + (hexNumber[i] - 'A' + 10);
        }
        // Check if the current character is a lowercase letter (a-f)
        else if (hexNumber[i] >= 'a' && hexNumber[i] <= 'f') {
            decimalNumber = decimalNumber * 16 + (hexNumber[i] - 'a' + 10);
        }

        i++;
    }

    return decimalNumber;
}

long long decimalToOctal(int decimalNumber) {
    long long octalNumber = 0;
    int i = 1;

    // Convert decimal to octal
    while (decimalNumber != 0) {
        octalNumber += (decimalNumber % 8) * i;
        decimalNumber /= 8;
        i *= 10;
    }

    return octalNumber;
}

int main() {
    char hexNumber[50];

    printf("Enter a hexadecimal number: ");
    scanf("%s", hexNumber);

    long long decimalNumber = hexadecimalToDecimal(hexNumber);

    long long octalNumber = decimalToOctal(decimalNumber);

    printf("Octal number: %lld\n", octalNumber);

    return 0;
}


""";

  static const String code_38 = r"""
#include <stdio.h>
#include <math.h>

long long octalToDecimal(int octalNumber) {
    int decimalNumber = 0, i = 0;

    // Convert octal to decimal
    while (octalNumber != 0) {
        decimalNumber += (octalNumber % 10) * pow(8, i);
        ++i;
        octalNumber /= 10;
    }

    return decimalNumber;
}

void decimalToHexadecimal(long long decimalNumber) {
    int remainder;
    char hexadecimalNumber[50];
    int i = 0;

    // Convert decimal to hexadecimal
    while (decimalNumber != 0) {
        remainder = decimalNumber % 16;

        if (remainder < 10) {
            hexadecimalNumber[i] = remainder + '0';
        } else {
            hexadecimalNumber[i] = remainder + 'A' - 10;
        }

        decimalNumber /= 16;
        ++i;
    }

    printf("Hexadecimal number: ");
    
    // Print the hexadecimal number in reverse order
    for (int j = i - 1; j >= 0; --j) {
        printf("%c", hexadecimalNumber[j]);
    }

    printf("\n");
}

int main() {
    int octalNumber;

    printf("Enter an octal number: ");
    scanf("%d", &octalNumber);

    if (octalNumber < 0) {
        printf("Invalid input. Octal number cannot be negative.\n");
        return 0;
    }

    long long decimalNumber = octalToDecimal(octalNumber);

    decimalToHexadecimal(decimalNumber);

    return 0;
}

""";

  static const String code_39 = r"""
  
#include <stdio.h>
#include <math.h>

int isPerfectSquare(int number) {
    int squareRoot = sqrt(number);
    return (squareRoot * squareRoot == number);
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (number < 0) {
        printf("Invalid input. Number cannot be negative.\n");
        return 0;
    }

    if (isPerfectSquare(number)) {
        printf("%d is a perfect square.\n", number);
    } else {
        printf("%d is not a perfect square.\n", number);
    }

    return 0;
}


""";

  static const String code_40 = r"""
#include <stdio.h>

int isPrime(int number) {
    if (number <= 1) {
        return 0;
    }

    for (int i = 2; i * i <= number; ++i) {
        if (number % i == 0) {
            return 0;
        }
    }

    return 1;
}

int countPrimesInRange(int start, int end) {
    int count = 0;

    for (int number = start; number <= end; ++number) {
        if (isPrime(number)) {
            ++count;
        }
    }

    return count;
}

int main() {
    int start, end;

    printf("Enter the starting number: ");
    scanf("%d", &start);

    printf("Enter the ending number: ");
    scanf("%d", &end);

    if (start > end) {
        printf("Invalid input. Starting number cannot be greater than the ending number.\n");
        return 0;
    }

    int primeCount = countPrimesInRange(start, end);

    printf("The number of prime numbers between %d and %d is %d.\n", start, end, primeCount);

    return 0;
}



""";


  static const String code_41 = r"""

#include <stdio.h>
#include <math.h>

int isArmstrong(int number) {
    int originalNumber = number;
    int numDigits = 0;
    int result = 0;

    // Count the number of digits in the number
    while (originalNumber != 0) {
        originalNumber /= 10;
        ++numDigits;
    }

    originalNumber = number;

    // Calculate the sum of the cubes of the digits
    while (originalNumber != 0) {
        int digit = originalNumber % 10;
        result += pow(digit, numDigits);
        originalNumber /= 10;
    }

    // Check if the number is Armstrong
    return (result == number);
}

void printArmstrongNumbersInRange(int start, int end) {
    printf("Armstrong numbers between %d and %d are: ", start, end);

    for (int number = start; number <= end; ++number) {
        if (isArmstrong(number)) {
            printf("%d ", number);
        }
    }

    printf("\n");
}

int main() {
    int start, end;

    printf("Enter the starting number: ");
    scanf("%d", &start);

    printf("Enter the ending number: ");
    scanf("%d", &end);

    if (start > end) {
        printf("Invalid input. Starting number cannot be greater than the ending number.\n");
        return 0;
    }

    printArmstrongNumbersInRange(start, end);

    return 0;
}

""";

  static const String code_42 = r"""

#include <stdio.h>

void printPrimeFactors(int number) {
    printf("Prime factors of %d are: ", number);

    // Check for 2 as a factor repeatedly
    while (number % 2 == 0) {
        printf("2 ");
        number /= 2;
    }

    // Check for other prime factors starting from 3
    for (int i = 3; i * i <= number; i += 2) {
        while (number % i == 0) {
            printf("%d ", i);
            number /= i;
        }
    }

    // If the remaining number is greater than 2, it is also a prime factor
    if (number > 2) {
        printf("%d ", number);
    }

    printf("\n");
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (number <= 1) {
        printf("Invalid input. Number must be greater than 1.\n");
        return 0;
    }

    printPrimeFactors(number);

    return 0;
}



""";

  static const String code_43 = r"""

#include <stdio.h>

int isPrime(int number) {
    if (number <= 1) {
        return 0;
    }

    for (int i = 2; i * i <= number; ++i) {
        if (number % i == 0) {
            return 0;
        }
    }

    return 1;
}

int sumOfPrimesInRange(int start, int end) {
    int sum = 0;

    for (int number = start; number <= end; ++number) {
        if (isPrime(number)) {
            sum += number;
        }
    }

    return sum;
}

int main() {
    int start, end;

    printf("Enter the starting number: ");
    scanf("%d", &start);

    printf("Enter the ending number: ");
    scanf("%d", &end);

    if (start > end) {
        printf("Invalid input. Starting number cannot be greater than the ending number.\n");
        return 0;
    }

    int sum = sumOfPrimesInRange(start, end);

    printf("The sum of prime numbers between %d and %d is %d.\n", start, end, sum);

    return 0;
}


""";

  static const String code_44 = r"""

#include <stdio.h>

int factorial(int number) {
    if (number == 0) {
        return 1;
    }
    int fact = 1;
    for (int i = 1; i <= number; ++i) {
        fact *= i;
    }
    return fact;
}

int isStrongNumber(int number) {
    int originalNumber = number;
    int sum = 0;

    while (number != 0) {
        int digit = number % 10;
        sum += factorial(digit);
        number /= 10;
    }

    return (sum == originalNumber);
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (number < 0) {
        printf("Invalid input. Number cannot be negative.\n");
        return 0;
    }

    if (isStrongNumber(number)) {
        printf("%d is a strong number.\n", number);
    } else {
        printf("%d is not a strong number.\n", number);
    }

    return 0;
}

""";

  static const String code_45 = r"""

#include <stdio.h>

int countDigitsWithOddFrequency(int number) {
    int count[10] = {0};
    int digit;

    while (number != 0) {
        digit = number % 10;
        count[digit]++;
        number /= 10;
    }

    int oddFrequencyCount = 0;

    for (int i = 0; i < 10; i++) {
        if (count[i] % 2 != 0) {
            oddFrequencyCount++;
        }
    }

    return oddFrequencyCount;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (number < 0) {
        printf("Invalid input. Number cannot be negative.\n");
        return 0;
    }

    int count = countDigitsWithOddFrequency(number);

    printf("Number of digits with odd frequency: %d\n", count);

    return 0;
}


""";

  static const String code_46 = r"""

#include <stdio.h>

int countDivisors(int number) {
    int count = 0;

    for (int i = 1; i <= number; ++i) {
        if (number % i == 0) {
            count++;
        }
    }

    return count;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (number <= 0) {
        printf("Invalid input. Number must be positive.\n");
        return 0;
    }

    int divisorsCount = countDivisors(number);

    printf("Number of divisors: %d\n", divisorsCount);

    return 0;
}



""";

  static const String code_47 = r"""

#include <stdio.h>

int sumOfDigits(int number) {
    int sum = 0;
    while (number != 0) {
        sum += number % 10;
        number /= 10;
    }
    return sum;
}

int sumOfPrimeFactors(int number) {
    int sum = 0;
    int n = number;

    for (int i = 2; i * i <= n; ++i) {
        while (n % i == 0) {
            sum += sumOfDigits(i);
            n /= i;
        }
    }

    if (n > 1) {
        sum += sumOfDigits(n);
    }

    return sum;
}

int isSmithNumber(int number) {
    int digitSum = sumOfDigits(number);
    int primeFactorSum = sumOfPrimeFactors(number);

    return (digitSum == primeFactorSum);
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (number < 0) {
        printf("Invalid input. Number cannot be negative.\n");
        return 0;
    }

    if (isSmithNumber(number)) {
        printf("%d is a Smith number.\n", number);
    } else {
        printf("%d is not a Smith number.\n", number);
    }

    return 0;
}


""";

  static const String code_48 = r"""

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void shuffleArray(int arr[], int size) {
    srand(time(NULL));

    for (int i = size - 1; i > 0; --i) {
        int j = rand() % (i + 1);
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
}

int main() {
    int size;

    printf("Enter the size of the array: ");
    scanf("%d", &size);

    if (size <= 0) {
        printf("Invalid input. Size must be positive.\n");
        return 0;
    }

    int *numbers = malloc(size * sizeof(int));

    if (numbers == NULL) {
        printf("Memory allocation failed.\n");
        return 0;
    }

    // Fill the array with numbers from 1 to size
    for (int i = 0; i < size; ++i) {
        numbers[i] = i + 1;
    }

    shuffleArray(numbers, size);

    printf("Random numbers without repetition: ");
    for (int i = 0; i < size; ++i) {
        printf("%d ", numbers[i]);
    }
    printf("\n");

    free(numbers);

    return 0;
}



""";

  static const String code_49 = r"""
#include <stdio.h>

int isPrime(int number) {
    if (number <= 1) {
        return 0;
    }

    for (int i = 2; i * i <= number; ++i) {
        if (number % i == 0) {
            return 0;
        }
    }

    return 1;
}

int getNextPrime(int number) {
    int nextNumber = number + 1;

    while (1) {
        if (isPrime(nextNumber)) {
            return nextNumber;
        }
        nextNumber++;
    }
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (number < 0) {
        printf("Invalid input. Number must be non-negative.\n");
        return 0;
    }

    int nextPrime = getNextPrime(number);

    printf("Next prime number: %d\n", nextPrime);

    return 0;
}

""";

  static const String code_50 = r"""

#include <stdio.h>

int isPrime(int number) {
    if (number <= 1) {
        return 0;
    }

    for (int i = 2; i * i <= number; ++i) {
        if (number % i == 0) {
            return 0;
        }
    }

    return 1;
}

int findNthPrime(int n) {
    int count = 0;
    int number = 2;

    while (count < n) {
        if (isPrime(number)) {
            count++;
        }
        number++;
    }

    return number - 1;
}

int main() {
    int n;

    printf("Enter the value of N: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Invalid input. N must be a positive integer.\n");
        return 0;
    }

    int nthPrime = findNthPrime(n);

    printf("The %dth prime number is: %d\n", n, nthPrime);

    return 0;
}


""";

  static const String code_51 = r"""

#include <stdio.h>

long long largestPrimeFactor(long long number) {
    long long largestFactor = 1;
    int factor = 2;

    while (factor * factor <= number) {
        if (number % factor == 0) {
            largestFactor = factor;
            number = number / factor;
        } else {
            factor = (factor == 2) ? 3 : factor + 2;
        }
    }

    if (number > largestFactor) {
        largestFactor = number;
    }

    return largestFactor;
}

int main() {
    long long number;

    printf("Enter a number: ");
    scanf("%lld", &number);

    if (number <= 0) {
        printf("Invalid input. Number must be a positive integer.\n");
        return 0;
    }

    long long largestFactor = largestPrimeFactor(number);

    printf("Largest prime factor of %lld is: %lld\n", number, largestFactor);

    return 0;
}


""";

  static const String code_52 = r"""

#include <stdio.h>

int power(int base, int exponent, int modulus) {
    int result = 1;

    while (exponent > 0) {
        if (exponent % 2 == 1) {
            result = (result * base) % modulus;
        }
        base = (base * base) % modulus;
        exponent = exponent / 2;
    }

    return result;
}

int isCarmichael(int number) {
    if (number < 2) {
        return 0;
    }

    for (int a = 2; a < number; ++a) {
        if (power(a, number, number) != a) {
            return 0;
        }
    }

    return 1;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (isCarmichael(number)) {
        printf("%d is a Carmichael number.\n", number);
    } else {
        printf("%d is not a Carmichael number.\n", number);
    }

    return 0;
}



""";

  static const String code_53 = r"""

#include <stdio.h>

double power(double base, int exponent) {
    if (exponent == 0) {
        return 1.0;
    } else if (exponent > 0) {
        return base * power(base, exponent - 1);
    } else {
        return 1.0 / (base * power(base, -exponent - 1));
    }
}

int main() {
    double base;
    int exponent;

    printf("Enter the base number: ");
    scanf("%lf", &base);

    printf("Enter the exponent: ");
    scanf("%d", &exponent);

    double result = power(base, exponent);

    printf("Result: %.2lf\n", result);

    return 0;
}

""";

  static const String code_54 = r"""

#include <stdio.h>

int gcd(int a, int b) {
    if (b == 0) {
        return a;
    }

    return gcd(b, a % b);
}

int gcdOfThreeNumbers(int a, int b, int c) {
    int gcdAB = gcd(a, b);
    return gcd(gcdAB, c);
}

int main() {
    int num1, num2, num3;

    printf("Enter three numbers: ");
    scanf("%d %d %d", &num1, &num2, &num3);

    int gcdThreeNumbers = gcdOfThreeNumbers(num1, num2, num3);

    printf("GCD of %d, %d, and %d is: %d\n", num1, num2, num3, gcdThreeNumbers);

    return 0;
}


""";

  static const String code_55 = r"""

#include <stdio.h>
#include <math.h>

int isPronic(int number) {
    int sqrtValue = sqrt(number);

    return (sqrtValue * (sqrtValue + 1) == number);
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (isPronic(number)) {
        printf("%d is a pronic number.\n", number);
    } else {
        printf("%d is not a pronic number.\n", number);
    }

    return 0;
}



""";

  static const String code_56 = r"""
  
#include <stdio.h>

#define MAX_SIZE 15

void generateMagicSquare(int n) {
    int magicSquare[MAX_SIZE][MAX_SIZE] = {0};

    int num = 1;
    int row = 0;
    int col = n / 2;

    while (num <= n * n) {
        magicSquare[row][col] = num;

        int prevRow = row;
        int prevCol = col;

        row = (row - 1 + n) % n;
        col = (col + 1) % n;

        if (magicSquare[row][col] != 0) {
            row = (prevRow + 1) % n;
            col = prevCol;
        }

        num++;
    }

    printf("Magic Square of size %d:\n", n);
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            printf("%2d ", magicSquare[i][j]);
        }
        printf("\n");
    }
}

int main() {
    int n;

    printf("Enter the size of the magic square (odd number): ");
    scanf("%d", &n);

    if (n % 2 == 0) {
        printf("Invalid input! Size should be an odd number.\n");
        return 0;
    }

    generateMagicSquare(n);

    return 0;
}


""";

  static const String code_57 = r"""
  
#include <stdio.h>

int nthTriangularNumber(int n) {
    return (n * (n + 1)) / 2;
}

int main() {
    int n;

    printf("Enter the value of n: ");
    scanf("%d", &n);

    int triangularNumber = nthTriangularNumber(n);

    printf("The %dth triangular number is: %d\n", n, triangularNumber);

    return 0;
}



""";

  static const String code_58 = r"""
  
#include <stdio.h>
#include <stdlib.h>

void generateGrayCode(int n) {
    if (n <= 0) {
        printf("Invalid input! N should be a positive integer.\n");
        return;
    }

    int totalNumbers = 1 << n;  // Compute the total number of codes (2^n)

    for (int i = 0; i < totalNumbers; i++) {
        int grayCode = i ^ (i >> 1);  // Compute the gray code by XORing with right-shifted value

        // Print the gray code in binary format
        for (int j = n - 1; j >= 0; j--) {
            int bit = (grayCode >> j) & 1;
            printf("%d", bit);
        }

        printf("\n");
    }
}

int main() {
    int n;

    printf("Enter the number of bits (n): ");
    scanf("%d", &n);

    generateGrayCode(n);

    return 0;
}


""";

  static const String code_59 = r"""
  
#include <stdio.h>

int sumOfProperDivisors(int number) {
    int sum = 0;

    for (int i = 1; i < number; i++) {
        if (number % i == 0) {
            sum += i;
        }
    }

    return sum;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    int sum = sumOfProperDivisors(number);

    printf("The sum of proper divisors of %d is: %d\n", number, sum);

    return 0;
}



""";

  static const String code_60 = r"""
  
#include <stdio.h>
#include <math.h>

int isTriangularNumber(int number) {
    int value = 8 * number + 1;
    int squareRoot = (int) sqrt(value);

    return squareRoot * squareRoot == value;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (isTriangularNumber(number)) {
        printf("%d is a triangular number.\n", number);
    } else {
        printf("%d is not a triangular number.\n", number);
    }

    return 0;
}



""";

  static const String code_61 = r"""
  
#include <stdio.h>

int countDivisors(int number) {
    int count = 0;

    for (int i = 1; i <= number; i++) {
        if (number % i == 0) {
            count++;
        }
    }

    return count;
}

int findNumberWithDivisors(int requiredDivisors) {
    int number = 1;

    while (1) {
        int divisors = countDivisors(number);

        if (divisors == requiredDivisors) {
            return number;
        }

        number++;
    }
}

int main() {
    int requiredDivisors;

    printf("Enter the required number of divisors: ");
    scanf("%d", &requiredDivisors);

    int result = findNumberWithDivisors(requiredDivisors);

    printf("The smallest number with %d divisors is: %d\n", requiredDivisors, result);

    return 0;
}



""";

  static const String code_62 = r"""
  
#include <stdio.h>
#include <math.h>

int countDigits(int number) {
    int count = 0;

    while (number != 0) {
        number /= 10;
        count++;
    }

    return count;
}

int isNarcissistic(int number) {
    int originalNumber = number;
    int numDigits = countDigits(number);
    int sum = 0;

    while (number != 0) {
        int digit = number % 10;
        sum += pow(digit, numDigits);
        number /= 10;
    }

    return sum == originalNumber;
}

void generateNarcissisticNumbers(int limit) {
    printf("Narcissistic numbers up to %d:\n", limit);

    for (int i = 1; i <= limit; i++) {
        if (isNarcissistic(i)) {
            printf("%d\n", i);
        }
    }
}

int main() {
    int limit;

    printf("Enter the limit: ");
    scanf("%d", &limit);

    generateNarcissisticNumbers(limit);

    return 0;
}


""";

  static const String code_63 = r"""
  
#include <stdio.h>

int sumOfProperDivisors(int number) {
    int sum = 0;

    for (int i = 1; i < number; i++) {
        if (number % i == 0) {
            sum += i;
        }
    }

    return sum;
}

int isAbundantNumber(int number) {
    int sum = sumOfProperDivisors(number);

    return sum > number;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (isAbundantNumber(number)) {
        printf("%d is an abundant number.\n", number);
    } else {
        printf("%d is not an abundant number.\n", number);
    }

    return 0;
}


""";

  static const String code_64 = r"""
  
#include <stdio.h>

int sumOfProperDivisors(int number) {
    int sum = 0;

    for (int i = 1; i < number; i++) {
        if (number % i == 0) {
            sum += i;
        }
    }

    return sum;
}

int isAbundantNumber(int number) {
    int sum = sumOfProperDivisors(number);

    return sum > number;
}

int findNthAbundantNumber(int n) {
    int count = 0;
    int number = 12;  // Start from the smallest abundant number

    while (count < n) {
        if (isAbundantNumber(number)) {
            count++;
        }
        number++;
    }

    return number - 1;  // Subtract 1 to get the Nth abundant number
}

int main() {
    int n;

    printf("Enter the value of N: ");
    scanf("%d", &n);

    int nthAbundantNumber = findNthAbundantNumber(n);

    printf("The %dth abundant number is: %d\n", n, nthAbundantNumber);

    return 0;
}



""";

  static const String code_65 = r"""
  
#include <stdio.h>

int isAutomorphicNumber(int number) {
    int square = number * number;
    int originalNumber = number;
    int lastDigits = 0;

    while (number != 0) {
        lastDigits = lastDigits * 10 + (square % 10);
        square /= 10;
        number /= 10;
    }

    return lastDigits == originalNumber;
}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (isAutomorphicNumber(number)) {
        printf("%d is an automorphic number.\n", number);
    } else {
        printf("%d is not an automorphic number.\n", number);
    }

    return 0;
}


""";

  static const String code_66 = r"""
  
#include <stdio.h>

int factorial(int number) {
    if (number == 0 || number == 1) {
        return 1;
    } else {
        return number * factorial(number - 1);
    }
}

int isStrongNumber(int number) {
    int originalNumber = number;
    int sum = 0;

    while (number != 0) {
        int digit = number % 10;
        sum += factorial(digit);
        number /= 10;
    }

    return sum == originalNumber;
}

void generateStrongNumbersInRange(int start, int end) {
    printf("Strong numbers in the range [%d, %d]: ", start, end);

    for (int i = start; i <= end; i++) {
        if (isStrongNumber(i)) {
            printf("%d ", i);
        }
    }

    printf("\n");
}

int main() {
    int start, end;

    printf("Enter the range (start end): ");
    scanf("%d %d", &start, &end);

    generateStrongNumbersInRange(start, end);

    return 0;
}


""";






  static const String code_op_1 = """
Enter a positive integer: 17
17 is a prime number.


""";

  static const String code_op_2 = """
Enter the number of terms: 10
Fibonacci Series up to 10 terms: 0 1 1 2 3 5 8 13 21 34

""";

  static const String code_op_3 = """
Enter the range (start end): 100 1000
Armstrong numbers in the range 100 to 1000 are: 153 370 371 407

""";

  static const String code_op_4 = """
Enter a number: 12321
12321 is a palindrome number.

""";

  static const String code_op_5 = """
Enter a number: 12
12 is not a perfect number.
""";


  static const String code_op_6 = """
  
Enter a positive integer: 5
Factorial of 5 = 120

""";

  static const String code_op_7 = """
  
  
Enter two positive integers: 24 36
The GCD of 24 and 36 is 12


""";

  static const String code_op_8 = """
Enter two positive integers: 12 18
The LCM of 12 and 18 is 36


""";

  static const String code_op_9 = """
Enter a positive integer: 12345
The sum of digits of 12345 is 15.


""";

  static const String code_op_10 = """
Enter a number: 12345
The reverse of 12345 is 54321.


""";

  static const String code_op_11 = """
Enter a number: 16
The square root of 16.00 is 4.00


""";

  static const String code_op_12 = """

Enter the base number: 2
Enter the exponent: 3
2.00 raised to the power of 3.00 is 8.00

""";

  static const String code_op_13 = """
Enter a binary number: 101010
Decimal equivalent: 42


""";

  static const String code_op_14 = """
Enter a decimal number: 27
Binary equivalent: 11011

""";

  static const String code_op_15 = """
Enter a decimal number: 255
Hexadecimal equivalent: FF


""";

  static const String code_op_16 = """
Enter a hexadecimal number: 1A
Decimal equivalent: 26


""";

  static const String code_op_17 = """
Enter a decimal number: 255
Octal equivalent: 377


""";

  static const String code_op_18 = """
Enter an octal number: 377
Decimal equivalent: 255

""";

  static const String code_op_19 = """
Enter the number of random numbers to generate: 5
Random numbers: 112131 485296 748575 952857 111444


""";

  static const String code_op_20 = """
Original array: 64 34 25 12 22 11 90
Sorting using Bubble Sort...
Sorted array (Bubble Sort): 11 12 22 25 34 64 90
Sorting using Selection Sort...
Sorted array (Selection Sort): 11 12 22 25 34 64 90

""";

  static const String code_op_21 = """
Enter the starting number: 1
Enter the ending number: 500
Armstrong numbers in the range 1 to 500:
1
2
3
4
5
6
7
8
9
153
370
371
407

""";

  static const String code_op_22 = """
Enter the number of palindromic primes to generate: 5
Palindromic Prime Numbers:
2
3
5
7
11


""";

  static const String code_op_23 = """
Enter the starting number: 1
Enter the ending number: 10000
Perfect numbers in the range 1 to 10000:
6
28
496
8128


""";

  static const String code_op_24 = """
Enter a number to calculate its factorial: 100
Factorial of 100:
93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000


""";

  static const String code_op_25 = """
GCD: 12


""";

  static const String code_op_26 = """
LCM: 120


""";

  static const String code_op_27 = """
Enter the starting number: 1
Enter the ending number: 10
Sum of even numbers: 30
Sum of odd numbers: 25



""";

  static const String code_op_28 = """
Enter a number: 12345
Reversed number: 54321


""";

  static const String code_op_29 = """
Enter a number: 12345
Number of digits: 5


""";

  static const String code_op_30 = """
Enter a number: 16
16 is a power of two


""";

  static const String code_op_31 = """
Enter the value of N: 10
The 10th Fibonacci number is: 55

""";

  static const String code_op_32 = """
Enter a number: 5
Square of 5 is: 25

""";

  static const String code_op_33 = """
Enter a decimal number: 1487
MCDLXXXVII

""";

  static const String code_op_34 = """
Enter a Roman numeral: MMXXI
Decimal value: 2021

""";

  static const String code_op_35 = """
Enter a binary number: 101010
Octal number: 52

""";

  static const String code_op_36 = """
Enter an octal number: 52
Binary number: 101010

""";

  static const String code_op_37 = """
Enter a hexadecimal number: 2A
Octal number: 52

""";

  static const String code_op_38 = """
Enter an octal number: 52
Hexadecimal number: 2A

""";

  static const String code_op_39 = """
Enter a number: 25
25 is a perfect square.

""";

  static const String code_op_40 = """
Enter the starting number: 1
Enter the ending number: 20
The number of prime numbers between 1 and 20 is 8.

""";

  static const String code_op_41 = """
Enter the starting number: 100
Enter the ending number: 500
Armstrong numbers between 100 and 500 are: 153 370 371 407

""";

  static const String code_op_42 = """
Enter a number: 84
Prime factors of 84 are: 2 2 3 7

""";

  static const String code_op_43 = """
Enter the starting number: 1
Enter the ending number: 20
The sum of prime numbers between 1 and 20 is 77.

""";

  static const String code_op_44 = """
Enter a number: 145
145 is a strong number.


""";

  static const String code_op_45 = """
Enter a number: 1234567890
Number of digits with odd frequency: 5


""";

  static const String code_op_46 = """
Enter a number: 24
Number of divisors: 8

""";

  static const String code_op_47 = """
Enter a number: 378
378 is a Smith number.

""";

  static const String code_op_48 = """
Enter the size of the array: 10
Random numbers without repetition: 8 6 5 3 10 7 1 9 4 2

""";

  static const String code_op_49 = """
Enter a number: 10
Next prime number: 11

""";

  static const String code_op_50 = """
Enter the value of N: 5
The 5th prime number is: 11

""";

  static const String code_op_51 = """
Enter a number: 84
Largest prime factor of 84 is: 7

""";

  static const String code_op_52 = """
Enter a number: 561
561 is a Carmichael number.

""";

  static const String code_op_53 = """
Enter the base number: 2.5
Enter the exponent: 4
Result: 39.06


""";

  static const String code_op_54 = """
Enter three numbers: 36 48 60
GCD of 36, 48, and 60 is: 12


""";

  static const String code_op_55 = """
Enter a number: 42
42 is a pronic number.

""";

  static const String code_op_56 = """
Enter the size of the magic square (odd number): 5
Magic Square of size 5:
17 24  1   8 15 
23  5  7  14 16 
 4  6 13  20 22 
10 12 19  21  3 
11 18 25  2   9 

""";

  static const String code_op_57 = """
Enter the value of n: 7
The 7th triangular number is: 28

""";

  static const String code_op_58 = """
Enter the number of bits (n): 3
000
001
011
010
110
111
101
100

""";

  static const String code_op_59 = """
Enter a number: 12
The sum of proper divisors of 12 is: 16

""";

  static const String code_op_60 = """
Enter a number: 15
15 is a triangular number.

""";

  static const String code_op_61 = """
Enter the required number of divisors: 4
The smallest number with 4 divisors is: 6

""";

  static const String code_op_62 = """
Enter the limit: 1000
Narcissistic numbers up to 1000:
1
2
3
4
5
6
7
8
9
153
370
371
407

""";

  static const String code_op_63 = """
Enter a number: 12
12 is an abundant number.

""";

  static const String code_op_64 = """
Enter the value of N: 5
The 5th abundant number is: 20

""";

  static const String code_op_65 = """
Enter a number: 25
25 is an automorphic number.


""";

  static const String code_op_66 = """
Enter the range (start end): 1 10000
Strong numbers in the range [1, 10000]: 1 2 145 40585

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

  static final syntaxViews_41 = {
    "Standard": SyntaxView(
      code:  code_41,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_42 = {
    "Standard": SyntaxView(
      code:  code_42,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_43 = {
    "Standard": SyntaxView(
      code:  code_43,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_44 = {
    "Standard": SyntaxView(
      code:  code_44,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_45 = {
    "Standard": SyntaxView(
      code:  code_45,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_46 = {
    "Standard": SyntaxView(
      code:  code_46,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_47 = {
    "Standard": SyntaxView(
      code:  code_47,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_48 = {
    "Standard": SyntaxView(
      code:  code_48,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };


  static final syntaxViews_49 = {
    "Standard": SyntaxView(
      code:  code_49,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_50 = {
    "Standard": SyntaxView(
      code:  code_50,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_51 = {
    "Standard": SyntaxView(
      code:  code_51,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_52 = {
    "Standard": SyntaxView(
      code:  code_52,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_53 = {
    "Standard": SyntaxView(
      code:  code_53,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_54 = {
    "Standard": SyntaxView(
      code:  code_54,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_55 = {
    "Standard": SyntaxView(
      code:  code_55,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_56 = {
    "Standard": SyntaxView(
      code:  code_56,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_57 = {
    "Standard": SyntaxView(
      code:  code_57,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_58 = {
    "Standard": SyntaxView(
      code:  code_58,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_59 = {
    "Standard": SyntaxView(
      code:  code_59,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_60 = {
    "Standard": SyntaxView(
      code:  code_60,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_61 = {
    "Standard": SyntaxView(
      code:  code_61,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_62 = {
    "Standard": SyntaxView(
      code:  code_62,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_63 = {
    "Standard": SyntaxView(
      code:  code_63,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };
  static final syntaxViews_64 = {
    "Standard": SyntaxView(
      code:  code_64,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };
  static final syntaxViews_65 = {
    "Standard": SyntaxView(
      code:  code_65,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };
  static final syntaxViews_66 = {
    "Standard": SyntaxView(
      code:  code_66,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))



                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))



                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_2.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))



                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_3.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))



                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_4.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))



                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_6.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_19.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_20.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_21.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_22.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_23.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_28.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_29.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_38.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_39.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
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
    else if(listIndex == 40)
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
                  itemCount: syntaxViews_41.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_41 = syntaxViews_41.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_41.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_41)
                          else
                            syntaxView_41,
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
                                      child: Text(code_op_41,
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
                      code_41);
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

                  _share(code_41); // Share the additional information

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
    else if(listIndex == 41)
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
                  itemCount: syntaxViews_42.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_42 = syntaxViews_42.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_42.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
                                child: syntaxView_42)
                          else
                            syntaxView_42,
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
                                      child: Text(code_op_42,
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
                      code_42);
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

                  _share(code_42); // Share the additional information

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
    else if(listIndex == 42)
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
                  itemCount: syntaxViews_43.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_43 = syntaxViews_43.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_43.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.8,
                                child: syntaxView_43)
                          else
                            syntaxView_43,
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
                                      child: Text(code_op_43,
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
                      code_43);
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

                  _share(code_43); // Share the additional information

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
    else if(listIndex == 43)
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
                  itemCount: syntaxViews_44.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_44 = syntaxViews_44.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_44.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
                                child: syntaxView_44)
                          else
                            syntaxView_44,
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
                                      child: Text(code_op_44,
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
                      code_44);
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

                  _share(code_44); // Share the additional information

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
    else if(listIndex == 44)
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
                  itemCount: syntaxViews_45.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_45 = syntaxViews_45.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_45.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
                                child: syntaxView_45)
                          else
                            syntaxView_45,
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
                                      child: Text(code_op_45,
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
                      code_45);
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

                  _share(code_45); // Share the additional information

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
    else if(listIndex == 45)
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
                  itemCount: syntaxViews_46.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_46 = syntaxViews_46.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_46.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.8,
                                child: syntaxView_46)
                          else
                            syntaxView_46,
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
                                      child: Text(code_op_46,
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
                      code_46);
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

                  _share(code_46); // Share the additional information

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
    else if(listIndex == 46)
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
                  itemCount: syntaxViews_47.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_47 = syntaxViews_47.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_47.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.5,
                                child: syntaxView_47)
                          else
                            syntaxView_47,
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
                                      child: Text(code_op_47,
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
                      code_47);
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

                  _share(code_47); // Share the additional information

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
    else if(listIndex == 47)
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
                  itemCount: syntaxViews_48.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_48 = syntaxViews_48.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_48.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2.8,
                                child: syntaxView_48)
                          else
                            syntaxView_48,
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
                                      child: Text(code_op_48,
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
                      code_48);
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

                  _share(code_48); // Share the additional information

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
    else if(listIndex == 48)
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
                  itemCount: syntaxViews_49.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_49 = syntaxViews_49.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_49.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 3.5,
                                child: syntaxView_49)
                          else
                            syntaxView_49,
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
                                      child: Text(code_op_49,
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
                      code_49);
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

                  _share(code_49); // Share the additional information

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
    else if(listIndex == 49)
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
                  itemCount: syntaxViews_50.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_50 = syntaxViews_50.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_50.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_50)
                          else
                            syntaxView_50,
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
                                      child: Text(code_op_50,
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
                      code_50);
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

                  _share(code_50); // Share the additional information

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
    else if(listIndex == 50)
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
                  itemCount: syntaxViews_51.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_51 = syntaxViews_51.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_51.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_51)
                          else
                            syntaxView_51,
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
                                      child: Text(code_op_51,
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
                      code_51);
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

                  _share(code_51); // Share the additional information

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
    else if(listIndex == 51)
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
                  itemCount: syntaxViews_52.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_52 = syntaxViews_52.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_52.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_52)
                          else
                            syntaxView_52,
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
                                      child: Text(code_op_52,
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
                      code_52);
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

                  _share(code_52); // Share the additional information

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
    else if(listIndex == 52)
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
                  itemCount: syntaxViews_53.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_53 = syntaxViews_53.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_53.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_53)
                          else
                            syntaxView_53,
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
                                      child: Text(code_op_53,
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
                      code_53);
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

                  _share(code_53); // Share the additional information

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
    else if(listIndex == 53)
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
                  itemCount: syntaxViews_54.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_54 = syntaxViews_54.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_54.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_54)
                          else
                            syntaxView_54,
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
                                      child: Text(code_op_54,
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
                      code_54);
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

                  _share(code_54); // Share the additional information

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
    else if(listIndex == 54)
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
                  itemCount: syntaxViews_55.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_55 = syntaxViews_55.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_55.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_55)
                          else
                            syntaxView_55,
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
                                      child: Text(code_op_55,
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
                      code_55);
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

                  _share(code_55); // Share the additional information

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
    else if(listIndex == 55)
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
                  itemCount: syntaxViews_56.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_56 = syntaxViews_56.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_56.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_56)
                          else
                            syntaxView_56,
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
                                      child: Text(code_op_56,
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
                      code_56);
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

                  _share(code_56); // Share the additional information

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
    else if(listIndex == 56)
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
                  itemCount: syntaxViews_57.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_57 = syntaxViews_57.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_57.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_57)
                          else
                            syntaxView_57,
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
                                      child: Text(code_op_57,
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
                      code_57);
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

                  _share(code_57); // Share the additional information

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
    else if(listIndex == 57)
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
                  itemCount: syntaxViews_58.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_58 = syntaxViews_58.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_58.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_58)
                          else
                            syntaxView_58,
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
                                      child: Text(code_op_58,
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
                      code_58);
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

                  _share(code_58); // Share the additional information

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
    else if(listIndex == 58)
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
                  itemCount: syntaxViews_59.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_59 = syntaxViews_59.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_59.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_59)
                          else
                            syntaxView_59,
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
                                      child: Text(code_op_59,
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
                      code_59);
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

                  _share(code_59); // Share the additional information

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
    else if(listIndex == 59)
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
                  itemCount: syntaxViews_60.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_60 = syntaxViews_60.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_60.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_60)
                          else
                            syntaxView_60,
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
                                      child: Text(code_op_60,
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
                      code_60);
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

                  _share(code_60); // Share the additional information

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
    else if(listIndex == 60)
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
                  itemCount: syntaxViews_61.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_61 = syntaxViews_61.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_61.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: syntaxView_61)
                          else
                            syntaxView_61,
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
                                      child: Text(code_op_61,
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
                      code_61);
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

                  _share(code_61); // Share the additional information

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
    else if(listIndex == 61)
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
                  itemCount: syntaxViews_62.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_62 = syntaxViews_62.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_62.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_62)
                          else
                            syntaxView_62,
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
                                      child: Text(code_op_62,
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
                      code_62);
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

                  _share(code_62); // Share the additional information

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

    else if(listIndex == 62)
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
                  itemCount: syntaxViews_63.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_63 = syntaxViews_63.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_63.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_63)
                          else
                            syntaxView_63,
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
                                      child: Text(code_op_63,
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
                      code_63);
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

                  _share(code_63); // Share the additional information

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

    else if(listIndex == 63)
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
                  itemCount: syntaxViews_64.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_64 = syntaxViews_64.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_64.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_64)
                          else
                            syntaxView_64,
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
                                      child: Text(code_op_64,
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
                      code_64);
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

                  _share(code_64); // Share the additional information

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

    else if(listIndex == 64)
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
                  itemCount: syntaxViews_65.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_65 = syntaxViews_65.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_65.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_65)
                          else
                            syntaxView_65,
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
                                      child: Text(code_op_65,
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
                      code_65);
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

                  _share(code_65); // Share the additional information

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

    else if(listIndex == 65)
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
                  itemCount: syntaxViews_66.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_66 = syntaxViews_66.values.elementAt(index);
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
                                  child: Expanded(
                                    child: Text(
                                        widget.program_name,
                                        style: GoogleFonts.openSans(textStyle: TextStyle(
                                          fontSize: 16,
                                          color: kmarooncolor,
                                          fontWeight: FontWeight.w600,))


                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          if (syntaxView_66.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_66)
                          else
                            syntaxView_66,
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
                                      child: Text(code_op_66,
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
                      code_66);
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

                  _share(code_66); // Share the additional information

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
