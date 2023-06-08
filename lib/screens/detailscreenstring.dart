import 'package:c_programs/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

class DetailScreenString extends StatefulWidget {


  final int listIndex;
  final String program_name;


  const DetailScreenString({Key? key,required this.listIndex,required this.program_name}) : super(key: key);

  @override
  State<DetailScreenString> createState() => _DetailScreenStringState(listIndex,program_name);


}

class _DetailScreenStringState extends State<DetailScreenString> {


  final int listIndex;
  final String program_name;


  _DetailScreenStringState(this.listIndex,this.program_name);

  static const String code_1 = r"""
#include <stdio.h>

int stringLength(const char* str) {
    int length = 0;
    
    while (str[length] != '\0') {
        length++;
    }
    
    return length;
}

int main() {
    const char* str = "Hello, World!";
    int length = stringLength(str);
    
    printf("The length of the string \"%s\" is %d.\n", str, length);
    
    return 0;
}


""";

  static const String code_2 = r"""
#include <stdio.h>

void stringCopy(char* destination, const char* source) {
    int i = 0;
    
    while (source[i] != '\0') {
        destination[i] = source[i];
        i++;
    }
    
    destination[i] = '\0';
}

int main() {
    const char* source = "Hello, World!";
    char destination[20]; // Make sure the destination array is large enough to accommodate the source string
    
    stringCopy(destination, source);
    
    printf("Source string: %s\n", source);
    printf("Copied string: %s\n", destination);
    
    return 0;
}

""";

  static const String code_3 = r"""

#include <stdio.h>
#include <string.h>

void stringConcat(char* destination, const char* source) {
    int destLen = strlen(destination);
    int i = 0;
    
    while (source[i] != '\0') {
        destination[destLen + i] = source[i];
        i++;
    }
    
    destination[destLen + i] = '\0';
}

int main() {
    char str1[50] = "Hello, ";
    const char* str2 = "World!";
    
    stringConcat(str1, str2);
    
    printf("Concatenated string: %s\n", str1);
    
    return 0;
}


""";

  static const String code_4 = r"""
#include <stdio.h>

int stringCompare(const char* str1, const char* str2) {
    int i = 0;
    
    while (str1[i] != '\0' && str2[i] != '\0') {
        if (str1[i] < str2[i]) {
            return -1;
        }
        else if (str1[i] > str2[i]) {
            return 1;
        }
        
        i++;
    }
    
    if (str1[i] == '\0' && str2[i] == '\0') {
        return 0;  // Strings are equal
    }
    else if (str1[i] == '\0') {
        return -1; // str1 is shorter
    }
    else {
        return 1;  // str2 is shorter
    }
}

int main() {
    const char* str1 = "Hello";
    const char* str2 = "World";
    
    int result = stringCompare(str1, str2);
    
    if (result < 0) {
        printf("String 1 is less than String 2\n");
    }
    else if (result > 0) {
        printf("String 1 is greater than String 2\n");
    }
    else {
        printf("String 1 is equal to String 2\n");
    }
    
    return 0;
}




""";

  static const String code_5 = r"""
#include <stdio.h>
#include <string.h>

void reverseString(char* str) {
    int length = strlen(str);
    int start = 0;
    int end = length - 1;

    while (start < end) {
        // Swap characters at start and end indices
        char temp = str[start];
        str[start] = str[end];
        str[end] = temp;

        // Move start and end towards the center
        start++;
        end--;
    }
}

int main() {
    char str[] = "Hello, World!";
    printf("Original string: %s\n", str);

    reverseString(str);
    printf("Reversed string: %s\n", str);

    return 0;
}

""";

  static const String code_6 = r"""
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

bool isPalindrome(const char* str) {
    int length = strlen(str);
    int start = 0;
    int end = length - 1;

    while (start < end) {
        if (str[start] != str[end]) {
            return false;
        }

        start++;
        end--;
    }

    return true;
}

int main() {
    const char* str1 = "racecar";
    const char* str2 = "hello";

    printf("%s is%s a palindrome.\n", str1, isPalindrome(str1) ? "" : " not");
    printf("%s is%s a palindrome.\n", str2, isPalindrome(str2) ? "" : " not");

    return 0;
}

""";

  static const String code_7 = r"""
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

bool isSubstring(const char* str, const char* substr) {
    int strLength = strlen(str);
    int substrLength = strlen(substr);

    for (int i = 0; i <= strLength - substrLength; i++) {
        int j;

        for (j = 0; j < substrLength; j++) {
            if (str[i + j] != substr[j]) {
                break;
            }
        }

        if (j == substrLength) {
            return true;
        }
    }

    return false;
}

int main() {
    const char* str = "Hello, World!";
    const char* substr1 = "Hello";
    const char* substr2 = "lo, Wo";
    const char* substr3 = "abc";

    printf("\"%s\" contains \"%s\": %s\n", str, substr1, isSubstring(str, substr1) ? "true" : "false");
    printf("\"%s\" contains \"%s\": %s\n", str, substr2, isSubstring(str, substr2) ? "true" : "false");
    printf("\"%s\" contains \"%s\": %s\n", str, substr3, isSubstring(str, substr3) ? "true" : "false");

    return 0;
}



""";

  static const String code_8 = r"""
#include <stdio.h>
#include <string.h>

int main() {
    char str[] = "Hello, World! How are you?";
    const char delimiters[] = " ,!?";  // Delimiters to tokenize the string
    char* token;

    // Tokenize the string
    token = strtok(str, delimiters);
    while (token != NULL) {
        printf("%s\n", token);
        token = strtok(NULL, delimiters);
    }

    return 0;
}

""";

  static const String code_9 = r"""
#include <stdio.h>
#include <ctype.h>
#include <string.h>

void convertToUppercase(char* str) {
    int length = strlen(str);

    for (int i = 0; i < length; i++) {
        str[i] = toupper(str[i]);
    }
}

void convertToLowercase(char* str) {
    int length = strlen(str);

    for (int i = 0; i < length; i++) {
        str[i] = tolower(str[i]);
    }
}

int main() {
    char str[] = "Hello, World!";
    printf("Original string: %s\n", str);

    convertToUppercase(str);
    printf("Uppercase string: %s\n", str);

    convertToLowercase(str);
    printf("Lowercase string: %s\n", str);

    return 0;
}

""";

  static const String code_10 = r"""
#include <stdio.h>

int main() {
    int num = 42;
    float pi = 3.14159;
    char str[] = "Hello, World!";

    printf("Integer: %d\n", num);
    printf("Float: %.2f\n", pi);
    printf("String: %s\n", str);

    return 0;
}

""";

  // done

  static const String code_11 = r"""
#include <stdio.h>

int countOccurrences(const char* str, char ch) {
    int count = 0;
    int i = 0;

    while (str[i] != '\0') {
        if (str[i] == ch) {
            count++;
        }

        i++;
    }

    return count;
}

int main() {
    const char* str = "Hello, World!";
    char ch = 'l';

    int occurrenceCount = countOccurrences(str, ch);

    printf("The character '%c' occurs %d times in the string.\n", ch, occurrenceCount);

    return 0;
}


""";

  static const String code_12 = r"""
#include <stdio.h>
#include <ctype.h>

void removeWhitespace(char* str) {
    int i = 0;
    int j = 0;

    while (str[i] != '\0') {
        if (!isspace(str[i])) {
            str[j] = str[i];
            j++;
        }

        i++;
    }

    str[j] = '\0';
}

int main() {
    char str[] = "Hello,   World!";

    printf("Original string: %s\n", str);

    removeWhitespace(str);

    printf("String without whitespace: %s\n", str);

    return 0;
}

""";

  static const String code_13 = r"""

#include <stdio.h>
#include <string.h>

void extractSubstring(const char* str, int startIndex, int length, char* result) {
    int strLength = strlen(str);
    int endIndex = startIndex + length;
    int resultIndex = 0;

    if (startIndex < 0 || startIndex >= strLength || length <= 0 || endIndex > strLength) {
        result[0] = '\0';
        return;
    }

    for (int i = startIndex; i < endIndex; i++) {
        result[resultIndex] = str[i];
        resultIndex++;
    }

    result[resultIndex] = '\0';
}

int main() {
    const char* str = "Hello, World!";
    int startIndex = 7;
    int length = 5;
    char result[10];

    extractSubstring(str, startIndex, length, result);

    printf("Substring: %s\n", result);

    return 0;
}



""";

  static const String code_14 = r"""
#include <stdio.h>
#include <string.h>

void sortStrings(char arr[][100], int n) {
    char temp[100];

    // Bubble sort algorithm
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (strcmp(arr[j], arr[j + 1]) > 0) {
                strcpy(temp, arr[j]);
                strcpy(arr[j], arr[j + 1]);
                strcpy(arr[j + 1], temp);
            }
        }
    }
}

int main() {
    char arr[][100] = {"banana", "apple", "orange", "grape", "cherry"};
    int n = sizeof(arr) / sizeof(arr[0]);

    printf("Before sorting:\n");
    for (int i = 0; i < n; i++) {
        printf("%s\n", arr[i]);
    }

    sortStrings(arr, n);

    printf("\nAfter sorting:\n");
    for (int i = 0; i < n; i++) {
        printf("%s\n", arr[i]);
    }

    return 0;
}

""";

  static const String code_15 = r"""
#include <stdio.h>
#include <string.h>

int areAnagrams(const char* str1, const char* str2) {
    int len1 = strlen(str1);
    int len2 = strlen(str2);

    if (len1 != len2) {
        return 0;  // Not anagrams if lengths are different
    }

    int count[256] = {0};

    for (int i = 0; i < len1; i++) {
        count[(int)str1[i]]++;
        count[(int)str2[i]]--;
    }

    for (int i = 0; i < 256; i++) {
        if (count[i] != 0) {
            return 0;  // Not anagrams if character counts differ
        }
    }

    return 1;  // Strings are anagrams
}

int main() {
    const char* str1 = "listen";
    const char* str2 = "silent";

    if (areAnagrams(str1, str2)) {
        printf("'%s' and '%s' are anagrams.\n", str1, str2);
    } else {
        printf("'%s' and '%s' are not anagrams.\n", str1, str2);
    }

    return 0;
}

""";

  // done

  static const String code_16 = r"""
#include <stdio.h>
#include <string.h>

void removeDuplicates(char* str) {
    int len = strlen(str);
    int index = 0;
    int i, j;

    for (i = 0; i < len; i++) {
        int shouldInclude = 1;

        for (j = 0; j < index; j++) {
            if (str[i] == str[j]) {
                shouldInclude = 0;
                break;
            }
        }

        if (shouldInclude) {
            str[index++] = str[i];
        }
    }

    str[index] = '\0';
}

int main() {
    char str[] = "Hello, World!";
    printf("Original string: %s\n", str);

    removeDuplicates(str);

    printf("String after removing duplicates: %s\n", str);

    return 0;
}

""";

  static const String code_17 = r"""
#include <stdio.h>
#include <string.h>

// Function to encrypt the string using Caesar cipher
void encrypt(char* str, int shift) {
    int len = strlen(str);

    for (int i = 0; i < len; i++) {
        if (str[i] >= 'a' && str[i] <= 'z') {
            str[i] = (str[i] - 'a' + shift) % 26 + 'a';
        } else if (str[i] >= 'A' && str[i] <= 'Z') {
            str[i] = (str[i] - 'A' + shift) % 26 + 'A';
        }
    }
}

// Function to decrypt the string using Caesar cipher
void decrypt(char* str, int shift) {
    int len = strlen(str);

    for (int i = 0; i < len; i++) {
        if (str[i] >= 'a' && str[i] <= 'z') {
            str[i] = (str[i] - 'a' - shift + 26) % 26 + 'a';
        } else if (str[i] >= 'A' && str[i] <= 'Z') {
            str[i] = (str[i] - 'A' - shift + 26) % 26 + 'A';
        }
    }
}

int main() {
    char str[] = "Hello, World!";
    int shift = 3;

    printf("Original string: %s\n", str);

    // Encrypt the string
    encrypt(str, shift);
    printf("Encrypted string: %s\n", str);

    // Decrypt the string
    decrypt(str, shift);
    printf("Decrypted string: %s\n", str);

    return 0;
}


""";

  static const String code_18 = r"""
#include <stdio.h>
#include <stdlib.h>

int main() {
    char str[] = "12345";
    int num;

    num = atoi(str);

    printf("String: %s\n", str);
    printf("Integer: %d\n", num);

    return 0;
}

""";

  static const String code_19 = r"""
#include <stdio.h>

int main() {
    int num = 12345;
    char str[20];

    sprintf(str, "%d", num);

    printf("Integer: %d\n", num);
    printf("String: %s\n", str);

    return 0;
}

""";

  static const String code_20 = r"""
#include <stdio.h>
#include <ctype.h>

void countVowelsAndConsonants(const char* str, int* vowels, int* consonants) {
    *vowels = 0;
    *consonants = 0;

    while (*str) {
        char ch = tolower(*str);

        if (ch >= 'a' && ch <= 'z') {
            if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
                (*vowels)++;
            } else {
                (*consonants)++;
            }
        }

        str++;
    }
}

int main() {
    const char* str = "Hello, World!";
    int vowels, consonants;

    countVowelsAndConsonants(str, &vowels, &consonants);

    printf("String: %s\n", str);
    printf("Number of vowels: %d\n", vowels);
    printf("Number of consonants: %d\n", consonants);

    return 0;
}

""";

  static const String code_21 = r"""
#include <stdio.h>

#define MAX_TERMS 100

typedef struct {
    int coeff;
    int exp;
} Term;

typedef struct {
    Term terms[MAX_TERMS];
    int count;
} Polynomial;

void readPolynomial(Polynomial *poly) {
    printf("Enter the number of terms in the polynomial: ");
    scanf("%d", &poly->count);
    
    printf("Enter the coefficient and exponent for each term:\n");
    for (int i = 0; i < poly->count; i++) {
        printf("Term %d:\n", i + 1);
        printf("Coefficient: ");
        scanf("%d", &poly->terms[i].coeff);
        printf("Exponent: ");
        scanf("%d", &poly->terms[i].exp);
    }
}

void displayPolynomial(Polynomial poly) {
    printf("Polynomial: ");
    for (int i = 0; i < poly.count; i++) {
        printf("%dx^%d ", poly.terms[i].coeff, poly.terms[i].exp);
        if (i != poly.count - 1) {
            printf("+ ");
        }
    }
    printf("\n");
}

Polynomial addPolynomials(Polynomial poly1, Polynomial poly2) {
    Polynomial result;
    int i = 0, j = 0, k = 0;
    
    while (i < poly1.count && j < poly2.count) {
        if (poly1.terms[i].exp > poly2.terms[j].exp) {
            result.terms[k++] = poly1.terms[i++];
        } else if (poly1.terms[i].exp < poly2.terms[j].exp) {
            result.terms[k++] = poly2.terms[j++];
        } else {
            result.terms[k].coeff = poly1.terms[i].coeff + poly2.terms[j].coeff;
            result.terms[k++].exp = poly1.terms[i].exp;
            i++;
            j++;
        }
    }
    
    while (i < poly1.count) {
        result.terms[k++] = poly1.terms[i++];
    }
    
    while (j < poly2.count) {
        result.terms[k++] = poly2.terms[j++];
    }
    
    result.count = k;
    return result;
}

int main() {
    Polynomial poly1, poly2, sum;
    
    printf("Enter details of the first polynomial:\n");
    readPolynomial(&poly1);
    
    printf("\nEnter details of the second polynomial:\n");
    readPolynomial(&poly2);
    
    sum = addPolynomials(poly1, poly2);
    
    printf("\nPolynomial 1: ");
    displayPolynomial(poly1);
    
    printf("\nPolynomial 2: ");
    displayPolynomial(poly2);
    
    printf("\nSum of polynomials: ");
    displayPolynomial(sum);
    
    return 0;
}


""";

  static const String code_22 = r"""
#include <stdio.h>

struct Term {
    int coefficient;
    int exponent;
};

void subtractPolynomials(struct Term poly1[], int size1, struct Term poly2[], int size2, struct Term result[]) {
    int i = 0, j = 0, k = 0;

    while (i < size1 && j < size2) {
        if (poly1[i].exponent > poly2[j].exponent) {
            result[k].coefficient = poly1[i].coefficient;
            result[k].exponent = poly1[i].exponent;
            i++;
        } else if (poly1[i].exponent < poly2[j].exponent) {
            result[k].coefficient = -poly2[j].coefficient;
            result[k].exponent = poly2[j].exponent;
            j++;
        } else {
            result[k].coefficient = poly1[i].coefficient - poly2[j].coefficient;
            result[k].exponent = poly1[i].exponent;
            i++;
            j++;
        }
        k++;
    }

    while (i < size1) {
        result[k].coefficient = poly1[i].coefficient;
        result[k].exponent = poly1[i].exponent;
        i++;
        k++;
    }

    while (j < size2) {
        result[k].coefficient = -poly2[j].coefficient;
        result[k].exponent = poly2[j].exponent;
        j++;
        k++;
    }
}

void displayPolynomial(struct Term poly[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%dx^%d ", poly[i].coefficient, poly[i].exponent);
        if (i < size - 1) {
            printf("+ ");
        }
    }
    printf("\n");
}

int main() {
    struct Term poly1[] = {{2, 3}, {-4, 2}, {6, 1}};
    int size1 = sizeof(poly1) / sizeof(poly1[0]);

    struct Term poly2[] = {{3, 4}, {-2, 3}, {5, 2}, {-1, 0}};
    int size2 = sizeof(poly2) / sizeof(poly2[0]);

    struct Term result[100];
    int resultSize = sizeof(result) / sizeof(result[0]);

    printf("Polynomial 1: ");
    displayPolynomial(poly1, size1);

    printf("Polynomial 2: ");
    displayPolynomial(poly2, size2);

    subtractPolynomials(poly1, size1, poly2, size2, result);

    printf("Difference of polynomials: ");
    displayPolynomial(result, resultSize);

    return 0;
}


""";

  static const String code_23 = r"""
#include <stdio.h>

struct Term {
    int coefficient;
    int exponent;
};

void multiplyPolynomials(struct Term poly1[], int size1, struct Term poly2[], int size2, struct Term result[], int *resultSize) {
    *resultSize = 0;

    for (int i = 0; i < size1; i++) {
        for (int j = 0; j < size2; j++) {
            result[*resultSize].coefficient = poly1[i].coefficient * poly2[j].coefficient;
            result[*resultSize].exponent = poly1[i].exponent + poly2[j].exponent;
            (*resultSize)++;
        }
    }
}

void displayPolynomial(struct Term poly[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%dx^%d ", poly[i].coefficient, poly[i].exponent);
        if (i < size - 1) {
            printf("+ ");
        }
    }
    printf("\n");
}

int main() {
    struct Term poly1[] = {{2, 3}, {-4, 2}, {6, 1}};
    int size1 = sizeof(poly1) / sizeof(poly1[0]);

    struct Term poly2[] = {{3, 4}, {-2, 3}, {5, 2}, {-1, 0}};
    int size2 = sizeof(poly2) / sizeof(poly2[0]);

    struct Term result[100];
    int resultSize = 0;

    printf("Polynomial 1: ");
    displayPolynomial(poly1, size1);

    printf("Polynomial 2: ");
    displayPolynomial(poly2, size2);

    multiplyPolynomials(poly1, size1, poly2, size2, result, &resultSize);

    printf("Product of polynomials: ");
    displayPolynomial(result, resultSize);

    return 0;
}



""";

  static const String code_24 = r"""
#include <stdio.h>

struct Term {
    int coefficient;
    int exponent;
};

void dividePolynomials(struct Term dividend[], int dividendSize, struct Term divisor[], int divisorSize, struct Term quotient[], int *quotientSize, struct Term remainder[], int *remainderSize) {
    *quotientSize = 0;
    *remainderSize = dividendSize;

    while (*remainderSize >= divisorSize) {
        int coef = dividend[0].coefficient / divisor[0].coefficient;
        int expo = dividend[0].exponent - divisor[0].exponent;

        quotient[*quotientSize].coefficient = coef;
        quotient[*quotientSize].exponent = expo;
        (*quotientSize)++;

        for (int i = 0; i < divisorSize; i++) {
            dividend[i].coefficient -= coef * divisor[i].coefficient;
        }

        while (*remainderSize >= 1 && dividend[0].coefficient == 0) {
            for (int i = 0; i < *remainderSize - 1; i++) {
                dividend[i] = dividend[i + 1];
            }
            (*remainderSize)--;
        }
    }

    for (int i = 0; i < *remainderSize; i++) {
        remainder[i] = dividend[i];
    }
}

void displayPolynomial(struct Term poly[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%dx^%d ", poly[i].coefficient, poly[i].exponent);
        if (i < size - 1) {
            printf("+ ");
        }
    }
    printf("\n");
}

int main() {
    struct Term dividend[] = {{6, 5}, {-9, 3}, {3, 2}, {12, 1}, {2, 0}};
    int dividendSize = sizeof(dividend) / sizeof(dividend[0]);

    struct Term divisor[] = {{2, 3}, {1, 1}};
    int divisorSize = sizeof(divisor) / sizeof(divisor[0]);

    struct Term quotient[100];
    int quotientSize = 0;

    struct Term remainder[100];
    int remainderSize = 0;

    printf("Dividend: ");
    displayPolynomial(dividend, dividendSize);

    printf("Divisor: ");
    displayPolynomial(divisor, divisorSize);

    dividePolynomials(dividend, dividendSize, divisor, divisorSize, quotient, &quotientSize, remainder, &remainderSize);

    printf("Quotient: ");
    displayPolynomial(quotient, quotientSize);

    printf("Remainder: ");
    displayPolynomial(remainder, remainderSize);

    return 0;
}


""";

  static const String code_25 = r"""
#include <stdio.h>

struct Term {
    int coefficient;
    int exponent;
};

int evaluatePolynomial(struct Term poly[], int size, int x) {
    int result = 0;

    for (int i = 0; i < size; i++) {
        int termValue = poly[i].coefficient;

        for (int j = 0; j < poly[i].exponent; j++) {
            termValue *= x;
        }

        result += termValue;
    }

    return result;
}

int main() {
    struct Term polynomial[] = {{3, 2}, {-4, 1}, {2, 0}};
    int size = sizeof(polynomial) / sizeof(polynomial[0]);

    int x = 2;

    int result = evaluatePolynomial(polynomial, size, x);

    printf("Polynomial: %dx^2 - %dx^1 + %dx^0\n", polynomial[0].coefficient, polynomial[1].coefficient, polynomial[2].coefficient);
    printf("x = %d\n", x);
    printf("Result: %d\n", result);

    return 0;
}


""";

  static const String code_26 = r"""

#include <stdio.h>

struct Term {
    int coefficient;
    int exponent;
};

void differentiatePolynomial(struct Term poly[], int size) {
    for (int i = 0; i < size; i++) {
        poly[i].coefficient *= poly[i].exponent;
        poly[i].exponent--;

        // Remove terms with zero coefficients
        if (poly[i].coefficient == 0) {
            for (int j = i; j < size - 1; j++) {
                poly[j] = poly[j + 1];
            }
            size--;
            i--;
        }
    }
}

void displayPolynomial(struct Term poly[], int size) {
    for (int i = 0; i < size; i++) {
        if (i != 0 && poly[i].coefficient > 0) {
            printf(" + ");
        }
        printf("%dx^%d", poly[i].coefficient, poly[i].exponent);
    }
    printf("\n");
}

int main() {
    struct Term polynomial[] = {{3, 2}, {-4, 1}, {2, 0}};
    int size = sizeof(polynomial) / sizeof(polynomial[0]);

    printf("Original Polynomial: ");
    displayPolynomial(polynomial, size);

    differentiatePolynomial(polynomial, size);

    printf("Differentiated Polynomial: ");
    displayPolynomial(polynomial, size);

    return 0;
}

""";

  static const String code_27 = r"""

#include <stdio.h>

struct Term {
    float coefficient;
    int exponent;
};

void integratePolynomial(struct Term poly[], int size) {
    for (int i = 0; i < size; i++) {
        poly[i].exponent++;
        poly[i].coefficient /= poly[i].exponent;
    }
}

void displayPolynomial(struct Term poly[], int size) {
    for (int i = 0; i < size; i++) {
        if (i != 0 && poly[i].coefficient > 0) {
            printf(" + ");
        }
        printf("%.2fx^%d", poly[i].coefficient, poly[i].exponent);
    }
    printf("\n");
}

int main() {
    struct Term polynomial[] = {{3.0, 2}, {-4.0, 1}, {2.0, 0}};
    int size = sizeof(polynomial) / sizeof(polynomial[0]);

    printf("Original Polynomial: ");
    displayPolynomial(polynomial, size);

    integratePolynomial(polynomial, size);

    printf("Integrated Polynomial: ");
    displayPolynomial(polynomial, size);

    return 0;
}

""";

  static const String code_28 = r"""

#include <stdio.h>

struct Term {
    float coefficient;
    int exponent;
};

int calculateDegree(struct Term poly[], int size) {
    int degree = 0;

    for (int i = 0; i < size; i++) {
        if (poly[i].exponent > degree) {
            degree = poly[i].exponent;
        }
    }

    return degree;
}

int main() {
    struct Term polynomial[] = {{3.0, 2}, {-4.0, 1}, {2.0, 0}};
    int size = sizeof(polynomial) / sizeof(polynomial[0]);

    int degree = calculateDegree(polynomial, size);
    printf("Polynomial Degree: %d\n", degree);

    return 0;
}


""";

  static const String code_29 = r"""

#include <stdio.h>

struct Term {
    float coefficient;
    int exponent;
};

void extractCoefficients(struct Term poly[], int size, float coefficients[]) {
    for (int i = 0; i < size; i++) {
        coefficients[i] = poly[i].coefficient;
    }
}

int main() {
    struct Term polynomial[] = {{3.0, 2}, {-4.0, 1}, {2.0, 0}};
    int size = sizeof(polynomial) / sizeof(polynomial[0]);

    float coefficients[size];

    extractCoefficients(polynomial, size, coefficients);

    printf("Polynomial Coefficients: ");
    for (int i = 0; i < size; i++) {
        printf("%.2f ", coefficients[i]);
    }
    printf("\n");

    return 0;
}



""";

  static const String code_30 = r"""
#include <stdio.h>
#include <gsl/gsl_poly.h>

int main() {
    double coeffs[] = {1.0, -3.0, 2.0};  // Coefficients of the polynomial: x^2 - 3x + 2
    int degree = sizeof(coeffs) / sizeof(coeffs[0]) - 1;

    gsl_poly_complex_workspace *w = gsl_poly_complex_workspace_alloc(degree + 1);
    gsl_poly_complex_solve(coeffs, degree + 1, w, NULL);

    printf("Roots of the polynomial:\n");
    for (int i = 0; i < degree; i++) {
        gsl_complex root = gsl_poly_complex_workspace_get(w, i);
        printf("Root %d: %.2f + %.2fi\n", i + 1, GSL_REAL(root), GSL_IMAG(root));
    }

    gsl_poly_complex_workspace_free(w);

    return 0;
}



""";

  static const String code_31 = r"""

#include <stdio.h>
#include <math.h>

void solveQuadratic(double a, double b, double c) {
    double discriminant = b * b - 4 * a * c;

    if (discriminant > 0) {
        double root1 = (-b + sqrt(discriminant)) / (2 * a);
        double root2 = (-b - sqrt(discriminant)) / (2 * a);

        printf("Roots are real and different.\n");
        printf("Root 1: %.2f\n", root1);
        printf("Root 2: %.2f\n", root2);
    } else if (discriminant == 0) {
        double root = -b / (2 * a);

        printf("Roots are real and equal.\n");
        printf("Root: %.2f\n", root);
    } else {
        double realPart = -b / (2 * a);
        double imaginaryPart = sqrt(-discriminant) / (2 * a);

        printf("Roots are complex and different.\n");
        printf("Root 1: %.2f + %.2fi\n", realPart, imaginaryPart);
        printf("Root 2: %.2f - %.2fi\n", realPart, imaginaryPart);
    }
}

int main() {
    double a, b, c;

    printf("Enter coefficients (a, b, c) of the quadratic equation: ");
    scanf("%lf %lf %lf", &a, &b, &c);

    solveQuadratic(a, b, c);

    return 0;
}


""";

  static const String code_32 = r"""

#include <stdio.h>

void solveLinear(double a, double b) {
    if (a == 0) {
        if (b == 0) {
            printf("The equation is indeterminate. Any value of x is a solution.\n");
        } else {
            printf("The equation is inconsistent. There is no solution.\n");
        }
    } else {
        double x = -b / a;
        printf("The solution to the equation is x = %.2f\n", x);
    }
}

int main() {
    double a, b;

    printf("Enter coefficients (a, b) of the linear equation: ");
    scanf("%lf %lf", &a, &b);

    solveLinear(a, b);

    return 0;
}


""";

  static const String code_33 = r"""
#include <stdio.h>

int gcd(int a, int b) {
    if (b == 0) {
        return a;
    }
    return gcd(b, a % b);
}

int main() {
    int num1, num2;

    printf("Enter two numbers: ");
    scanf("%d %d", &num1, &num2);

    int result = gcd(num1, num2);

    printf("The GCD of %d and %d is %d\n", num1, num2, result);

    return 0;
}



""";

  static const String code_34 = r"""
#include <stdio.h>

void extendedGCD(int a, int b, int* gcd, int* x, int* y) {
    if (b == 0) {
        *gcd = a;
        *x = 1;
        *y = 0;
    } else {
        int x1, y1;
        extendedGCD(b, a % b, gcd, &x1, &y1);
        *x = y1;
        *y = x1 - (a / b) * y1;
    }
}

int main() {
    int num1, num2;
    int gcd, x, y;

    printf("Enter two numbers: ");
    scanf("%d %d", &num1, &num2);

    extendedGCD(num1, num2, &gcd, &x, &y);

    printf("GCD: %d\n", gcd);
    printf("Bézout's Coefficients: x = %d, y = %d\n", x, y);

    return 0;
}


""";

  static const String code_35 = r"""
#include <stdio.h>
#include <stdbool.h>

void sieveOfEratosthenes(int limit) {
    bool primes[limit + 1];
    
    // Initialize all elements as true
    for (int i = 0; i <= limit; i++) {
        primes[i] = true;
    }
    
    // Mark numbers as non-prime
    for (int p = 2; p * p <= limit; p++) {
        if (primes[p] == true) {
            // Mark all multiples of p as non-prime
            for (int i = p * p; i <= limit; i += p) {
                primes[i] = false;
            }
        }
    }
    
    // Print prime numbers
    printf("Prime numbers up to %d:\n", limit);
    for (int p = 2; p <= limit; p++) {
        if (primes[p] == true) {
            printf("%d ", p);
        }
    }
    printf("\n");
}

int main() {
    int limit;
    
    printf("Enter the limit: ");
    scanf("%d", &limit);
    
    sieveOfEratosthenes(limit);
    
    return 0;
}


""";

  static const String code_36 = r"""
#include <stdio.h>

long long binomialCoeff(int n, int k) {
    long long res = 1;

    if (k > n - k)
        k = n - k;

    for (int i = 0; i < k; ++i) {
        res *= (n - i);
        res /= (i + 1);
    }

    return res;
}

void generatePascalsTriangle(int numRows) {
    for (int row = 0; row < numRows; ++row) {
        for (int space = 0; space < numRows - row; ++space) {
            printf(" ");
        }

        for (int col = 0; col <= row; ++col) {
            printf("%lld ", binomialCoeff(row, col));
        }

        printf("\n");
    }
}

int main() {
    int numRows;

    printf("Enter the number of rows: ");
    scanf("%d", &numRows);

    generatePascalsTriangle(numRows);

    return 0;
}

""";

  static const String code_37 = r"""
  
#include <stdio.h>

long long binomialCoeff(int n, int k) {
    if (k == 0 || k == n)
        return 1;

    long long res = 1;
    int i;

    if (k > n - k)
        k = n - k;

    for (i = 0; i < k; ++i) {
        res *= (n - i);
        res /= (i + 1);
    }

    return res;
}

int main() {
    int n, k;

    printf("Enter the values of n and k (n choose k): ");
    scanf("%d %d", &n, &k);

    long long result = binomialCoeff(n, k);

    printf("%d choose %d = %lld\n", n, k, result);

    return 0;
}

""";

  static const String code_38 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

// Stack structure
typedef struct {
    int top;
    int capacity;
    int* array;
} Stack;

// Create a new stack
Stack* createStack(int capacity) {
    Stack* stack = (Stack*)malloc(sizeof(Stack));
    stack->top = -1;
    stack->capacity = capacity;
    stack->array = (int*)malloc(stack->capacity * sizeof(int));
    return stack;
}

// Check if the stack is empty
int isEmpty(Stack* stack) {
    return stack->top == -1;
}

// Check if the stack is full
int isFull(Stack* stack) {
    return stack->top == stack->capacity - 1;
}

// Push an element onto the stack
void push(Stack* stack, int item) {
    if (isFull(stack)) {
        printf("Stack Overflow\n");
        return;
    }
    stack->array[++stack->top] = item;
}

// Pop an element from the stack
int pop(Stack* stack) {
    if (isEmpty(stack)) {
        printf("Stack Underflow\n");
        return -1;
    }
    return stack->array[stack->top--];
}

// Get the top element of the stack without removing it
int peek(Stack* stack) {
    if (isEmpty(stack)) {
        return -1;
    }
    return stack->array[stack->top];
}

// Evaluate an arithmetic expression
int evaluateExpression(const char* expression) {
    int i;
    Stack* stack = createStack(strlen(expression));

    for (i = 0; expression[i] != '\0'; ++i) {
        if (isdigit(expression[i])) {
            push(stack, expression[i] - '0');
        } else {
            int operand2 = pop(stack);
            int operand1 = pop(stack);

            switch (expression[i]) {
                case '+':
                    push(stack, operand1 + operand2);
                    break;
                case '-':
                    push(stack, operand1 - operand2);
                    break;
                case '*':
                    push(stack, operand1 * operand2);
                    break;
                case '/':
                    push(stack, operand1 / operand2);
                    break;
                default:
                    printf("Invalid Operator\n");
                    return -1;
            }
        }
    }

    int result = pop(stack);
    free(stack);

    return result;
}

int main() {
    const char* expression = "5 3 + 6 *";
    int result = evaluateExpression(expression);

    printf("Expression: %s\n", expression);
    printf("Result: %d\n", result);

    return 0;
}

""";

  static const String code_39 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

typedef struct {
    char* array;
    int top;
    int capacity;
} Stack;

Stack* createStack(int capacity) {
    Stack* stack = (Stack*)malloc(sizeof(Stack));
    stack->array = (char*)malloc(capacity * sizeof(char));
    stack->top = -1;
    stack->capacity = capacity;
    return stack;
}

int isEmpty(Stack* stack) {
    return stack->top == -1;
}

int isFull(Stack* stack) {
    return stack->top == stack->capacity - 1;
}

void push(Stack* stack, char item) {
    if (isFull(stack)) {
        printf("Stack Overflow\n");
        return;
    }
    stack->array[++stack->top] = item;
}

char pop(Stack* stack) {
    if (isEmpty(stack)) {
        printf("Stack Underflow\n");
        return '\0';
    }
    return stack->array[stack->top--];
}

char peek(Stack* stack) {
    if (isEmpty(stack)) {
        return '\0';
    }
    return stack->array[stack->top];
}

int isOperator(char ch) {
    return (ch == '+' || ch == '-' || ch == '*' || ch == '/');
}

int precedence(char ch) {
    switch (ch) {
        case '+':
        case '-':
            return 1;
        case '*':
        case '/':
            return 2;
        default:
            return 0;
    }
}

void infixToPostfix(const char* infixExpression, char* postfixExpression) {
    int i, j;
    Stack* stack = createStack(strlen(infixExpression));
    j = 0;

    for (i = 0; infixExpression[i] != '\0'; ++i) {
        char ch = infixExpression[i];

        if (isalnum(ch)) {
            postfixExpression[j++] = ch;
        } else if (ch == '(') {
            push(stack, ch);
        } else if (ch == ')') {
            while (!isEmpty(stack) && peek(stack) != '(') {
                postfixExpression[j++] = pop(stack);
            }

            if (!isEmpty(stack) && peek(stack) != '(') {
                printf("Invalid Expression\n");
                return;
            } else {
                pop(stack); // Discard '('
            }
        } else if (isOperator(ch)) {
            while (!isEmpty(stack) && precedence(ch) <= precedence(peek(stack))) {
                postfixExpression[j++] = pop(stack);
            }
            push(stack, ch);
        }
    }

    while (!isEmpty(stack)) {
        postfixExpression[j++] = pop(stack);
    }

    postfixExpression[j] = '\0';
    free(stack);
}

int main() {
    const char* infixExpression = "a+b*c-(d/e+f)*g";
    char postfixExpression[100];

    infixToPostfix(infixExpression, postfixExpression);

    printf("Infix Expression: %s\n", infixExpression);
    printf("Postfix Expression: %s\n", postfixExpression);

    return 0;
}


""";

  static const String code_40 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

typedef struct {
    int* array;
    int top;
    int capacity;
} Stack;

Stack* createStack(int capacity) {
    Stack* stack = (Stack*)malloc(sizeof(Stack));
    stack->array = (int*)malloc(capacity * sizeof(int));
    stack->top = -1;
    stack->capacity = capacity;
    return stack;
}

int isEmpty(Stack* stack) {
    return stack->top == -1;
}

int isFull(Stack* stack) {
    return stack->top == stack->capacity - 1;
}

void push(Stack* stack, int item) {
    if (isFull(stack)) {
        printf("Stack Overflow\n");
        return;
    }
    stack->array[++stack->top] = item;
}

int pop(Stack* stack) {
    if (isEmpty(stack)) {
        printf("Stack Underflow\n");
        return -1;
    }
    return stack->array[stack->top--];
}

int evaluatePostfix(const char* postfixExpression) {
    Stack* stack = createStack(strlen(postfixExpression));
    int i;

    for (i = 0; postfixExpression[i] != '\0'; ++i) {
        char ch = postfixExpression[i];

        if (isdigit(ch)) {
            push(stack, ch - '0');
        } else {
            int operand2 = pop(stack);
            int operand1 = pop(stack);
            int result;

            switch (ch) {
                case '+':
                    result = operand1 + operand2;
                    break;
                case '-':
                    result = operand1 - operand2;
                    break;
                case '*':
                    result = operand1 * operand2;
                    break;
                case '/':
                    result = operand1 / operand2;
                    break;
                default:
                    printf("Invalid Operator\n");
                    return -1;
            }

            push(stack, result);
        }
    }

    int finalResult = pop(stack);
    free(stack);
    return finalResult;
}

int main() {
    const char* postfixExpression = "523*+4-";
    int result = evaluatePostfix(postfixExpression);

    printf("Postfix Expression: %s\n", postfixExpression);
    printf("Evaluation Result: %d\n", result);

    return 0;
}



""";


  // done

  static const String code_41 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

typedef struct {
    int coefficient;
    int exponent;
} Term;

typedef struct {
    Term* terms;
    int count;
} Expression;

Expression* createExpression(int capacity) {
    Expression* expression = (Expression*)malloc(sizeof(Expression));
    expression->terms = (Term*)malloc(capacity * sizeof(Term));
    expression->count = 0;
    return expression;
}

void addTerm(Expression* expression, int coefficient, int exponent) {
    Term term;
    term.coefficient = coefficient;
    term.exponent = exponent;
    expression->terms[expression->count++] = term;
}

void simplifyExpression(const char* inputExpression, Expression* simplifiedExpression) {
    int coefficient = 0;
    int exponent = 0;
    int sign = 1;

    for (int i = 0; inputExpression[i] != '\0'; i++) {
        char ch = inputExpression[i];

        if (isdigit(ch)) {
            coefficient = coefficient * 10 + (ch - '0');
        } else if (ch == 'x') {
            exponent = (coefficient == 0) ? 1 : exponent;
            coefficient = (coefficient == 0) ? 1 : coefficient;
        } else if (ch == '+' || ch == '-') {
            addTerm(simplifiedExpression, sign * coefficient, exponent);
            coefficient = 0;
            exponent = 0;
            sign = (ch == '+') ? 1 : -1;
        }
    }

    addTerm(simplifiedExpression, sign * coefficient, exponent);
}

void displayExpression(const Expression* expression) {
    for (int i = 0; i < expression->count; i++) {
        Term term = expression->terms[i];

        if (i > 0 && term.coefficient > 0) {
            printf("+ ");
        }

        if (term.coefficient != 1 || term.exponent == 0) {
            printf("%d", term.coefficient);
        }

        if (term.exponent > 0) {
            printf("x");

            if (term.exponent > 1) {
                printf("^%d", term.exponent);
            }
        }

        printf(" ");
    }

    printf("\n");
}

int main() {
    const char* inputExpression = "2x^3 + 4x^2 - 6x + 8";
    Expression* simplifiedExpression = createExpression(10);

    simplifyExpression(inputExpression, simplifiedExpression);

    printf("Input Expression: %s\n", inputExpression);
    printf("Simplified Expression: ");
    displayExpression(simplifiedExpression);

    free(simplifiedExpression->terms);
    free(simplifiedExpression);

    return 0;
}

""";

  static const String code_42 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

typedef struct {
    char* value;
    char type;
} Token;

Token* tokenizeExpression(const char* expression, int* count) {
    const char delimiters[] = "+-*/()";
    const int numDelimiters = strlen(delimiters);
    int capacity = 10;
    *count = 0;
    Token* tokens = (Token*)malloc(capacity * sizeof(Token));

    int i = 0;
    while (expression[i] != '\0') {
        char ch = expression[i];

        if (isspace(ch)) {
            i++;
            continue;
        }

        if (isdigit(ch)) {
            int numCapacity = 10;
            int numCount = 0;
            char* number = (char*)malloc(numCapacity * sizeof(char));
            while (isdigit(ch)) {
                number[numCount++] = ch;
                if (numCount >= numCapacity) {
                    numCapacity *= 2;
                    number = (char*)realloc(number, numCapacity * sizeof(char));
                }
                ch = expression[++i];
            }
            number[numCount] = '\0';
            tokens[*count].value = number;
            tokens[*count].type = 'N';
            (*count)++;
            continue;
        }

        for (int j = 0; j < numDelimiters; j++) {
            if (ch == delimiters[j]) {
                tokens[*count].value = (char*)malloc(2 * sizeof(char));
                tokens[*count].value[0] = ch;
                tokens[*count].value[1] = '\0';
                tokens[*count].type = 'D';
                (*count)++;
                break;
            }
        }

        i++;
    }

    return tokens;
}

void displayTokens(Token* tokens, int count) {
    for (int i = 0; i < count; i++) {
        printf("[%s, %c] ", tokens[i].value, tokens[i].type);
    }
    printf("\n");
}

int main() {
    const char* expression = "2 * (3 + 4) - 5 / 2";
    int tokenCount;
    Token* tokens = tokenizeExpression(expression, &tokenCount);

    printf("Expression: %s\n", expression);
    printf("Tokens: ");
    displayTokens(tokens, tokenCount);

    for (int i = 0; i < tokenCount; i++) {
        free(tokens[i].value);
    }
    free(tokens);

    return 0;
}


""";

  static const String code_43 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

typedef struct TreeNode {
    char data;
    struct TreeNode* left;
    struct TreeNode* right;
} TreeNode;

bool isOperator(char ch) {
    return ch == '+' || ch == '-' || ch == '*' || ch == '/';
}

TreeNode* createNode(char data) {
    TreeNode* newNode = (TreeNode*)malloc(sizeof(TreeNode));
    newNode->data = data;
    newNode->left = NULL;
    newNode->right = NULL;
    return newNode;
}

TreeNode* constructExpressionTree(const char* postfixExpression) {
    int length = strlen(postfixExpression);
    TreeNode** stack = (TreeNode**)malloc(length * sizeof(TreeNode*));
    int top = -1;

    for (int i = 0; i < length; i++) {
        char ch = postfixExpression[i];

        if (!isOperator(ch)) {
            TreeNode* newNode = createNode(ch);
            stack[++top] = newNode;
        } else {
            TreeNode* newNode = createNode(ch);
            newNode->right = stack[top--];
            newNode->left = stack[top--];
            stack[++top] = newNode;
        }
    }

    TreeNode* root = stack[top--];
    free(stack);
    return root;
}

void inorderTraversal(TreeNode* root) {
    if (root != NULL) {
        inorderTraversal(root->left);
        printf("%c ", root->data);
        inorderTraversal(root->right);
    }
}

void postorderTraversal(TreeNode* root) {
    if (root != NULL) {
        postorderTraversal(root->left);
        postorderTraversal(root->right);
        printf("%c ", root->data);
    }
}

int main() {
    const char* postfixExpression = "AB+CD-*";
    TreeNode* root = constructExpressionTree(postfixExpression);

    printf("Inorder Traversal: ");
    inorderTraversal(root);
    printf("\n");

    printf("Postorder Traversal: ");
    postorderTraversal(root);
    printf("\n");

    return 0;
}


""";

  static const String code_44 = r"""

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

typedef struct TreeNode {
    char data;
    struct TreeNode* left;
    struct TreeNode* right;
} TreeNode;

bool isOperator(char ch) {
    return ch == '+' || ch == '-' || ch == '*' || ch == '/';
}

int evaluateExpressionTree(TreeNode* root) {
    if (root == NULL)
        return 0;

    if (!isOperator(root->data))
        return root->data - '0';

    int leftValue = evaluateExpressionTree(root->left);
    int rightValue = evaluateExpressionTree(root->right);

    switch (root->data) {
        case '+':
            return leftValue + rightValue;
        case '-':
            return leftValue - rightValue;
        case '*':
            return leftValue * rightValue;
        case '/':
            return leftValue / rightValue;
        default:
            return 0; // Invalid operator
    }
}

int main() {
    TreeNode* root = (TreeNode*)malloc(sizeof(TreeNode));
    root->data = '+';
    root->left = (TreeNode*)malloc(sizeof(TreeNode));
    root->left->data = '*';
    root->left->left = (TreeNode*)malloc(sizeof(TreeNode));
    root->left->left->data = '5';
    root->left->left->left = NULL;
    root->left->left->right = NULL;
    root->left->right = (TreeNode*)malloc(sizeof(TreeNode));
    root->left->right->data = '4';
    root->left->right->left = NULL;
    root->left->right->right = NULL;
    root->right = (TreeNode*)malloc(sizeof(TreeNode));
    root->right->data = '-';
    root->right->left = (TreeNode*)malloc(sizeof(TreeNode));
    root->right->left->data = '6';
    root->right->left->left = NULL;
    root->right->left->right = NULL;
    root->right->right = (TreeNode*)malloc(sizeof(TreeNode));
    root->right->right->data = '2';
    root->right->right->left = NULL;
    root->right->right->right = NULL;

    int result = evaluateExpressionTree(root);
    printf("Result: %d\n", result);

    return 0;
}

""";

  static const String code_45 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define MAX_LENGTH 100

typedef struct Node {
    char value[MAX_LENGTH];
    struct Node* left;
    struct Node* right;
} Node;

Node* createNode(char value[MAX_LENGTH]) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    strcpy(newNode->value, value);
    newNode->left = NULL;
    newNode->right = NULL;
    return newNode;
}

int isOperator(char c) {
    if (c == '+' || c == '-' || c == '*' || c == '/' || c == '^')
        return 1;
    return 0;
}

Node* constructExpressionTree(char postfix[]) {
    int i;
    Node* tempNode, * leftNode, * rightNode;
    Node* stack[MAX_LENGTH];

    for (i = 0; postfix[i] != '\0'; i++) {
        if (!isOperator(postfix[i])) {
            tempNode = createNode(&postfix[i]);
            stack[++top] = tempNode;
        }
        else {
            tempNode = createNode(&postfix[i]);
            rightNode = stack[top--];
            leftNode = stack[top--];
            tempNode->right = rightNode;
            tempNode->left = leftNode;
            stack[++top] = tempNode;
        }
    }

    return stack[top];
}

void differentiateExpression(Node* root, char variable[MAX_LENGTH]) {
    if (root) {
        differentiateExpression(root->left, variable);
        differentiateExpression(root->right, variable);

        if (isOperator(root->value[0])) {
            printf("(%s)' = ", root->value);
        }
        else if (strcmp(root->value, variable) == 0) {
            printf("(%s)' = 1", root->value);
            return;
        }
        else {
            printf("(%s)' = 0", root->value);
            return;
        }
    }
}

int main() {
    char postfix[MAX_LENGTH];
    char variable[MAX_LENGTH];

    printf("Enter the postfix expression: ");
    fgets(postfix, sizeof(postfix), stdin);
    postfix[strcspn(postfix, "\n")] = '\0';

    printf("Enter the variable: ");
    fgets(variable, sizeof(variable), stdin);
    variable[strcspn(variable, "\n")] = '\0';

    Node* root = constructExpressionTree(postfix);

    printf("Differentiated expression:\n");
    differentiateExpression(root, variable);

    return 0;
}

""";

  static const String code_46 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define MAX_LENGTH 100

typedef struct Node {
    char value[MAX_LENGTH];
    struct Node* left;
    struct Node* right;
} Node;

Node* createNode(char value[MAX_LENGTH]) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    strcpy(newNode->value, value);
    newNode->left = NULL;
    newNode->right = NULL;
    return newNode;
}

int isOperator(char c) {
    if (c == '+' || c == '-' || c == '*' || c == '/' || c == '^')
        return 1;
    return 0;
}

Node* constructExpressionTree(char postfix[]) {
    int i;
    Node* tempNode, * leftNode, * rightNode;
    Node* stack[MAX_LENGTH];

    for (i = 0; postfix[i] != '\0'; i++) {
        if (!isOperator(postfix[i])) {
            tempNode = createNode(&postfix[i]);
            stack[++top] = tempNode;
        }
        else {
            tempNode = createNode(&postfix[i]);
            rightNode = stack[top--];
            leftNode = stack[top--];
            tempNode->right = rightNode;
            tempNode->left = leftNode;
            stack[++top] = tempNode;
        }
    }

    return stack[top];
}

void integrateExpression(Node* root, char variable[MAX_LENGTH]) {
    if (root) {
        integrateExpression(root->left, variable);
        integrateExpression(root->right, variable);

        if (strcmp(root->value, variable) == 0) {
            printf("∫%s dx = 0.5*%s^2", root->value, root->value);
            return;
        }
        else if (isOperator(root->value[0])) {
            printf("∫%s dx = ", root->value);
        }
        else {
            printf("∫%s dx = %s*x", root->value, root->value);
            return;
        }
    }
}

int main() {
    char postfix[MAX_LENGTH];
    char variable[MAX_LENGTH];

    printf("Enter the postfix expression: ");
    fgets(postfix, sizeof(postfix), stdin);
    postfix[strcspn(postfix, "\n")] = '\0';

    printf("Enter the variable: ");
    fgets(variable, sizeof(variable), stdin);
    variable[strcspn(variable, "\n")] = '\0';

    Node* root = constructExpressionTree(postfix);

    printf("Integrated expression:\n");
    integrateExpression(root, variable);

    return 0;
}


""";

  static const String code_47 = r"""

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LENGTH 100

void substituteExpression(char expression[], char variable[], char substitution[]) {
    char* p = strstr(expression, variable);
    while (p != NULL) {
        int len1 = strlen(expression);
        int len2 = strlen(substitution);
        int len3 = strlen(p + strlen(variable));

        memmove(p + len2, p + strlen(variable), len3 + 1);
        memcpy(p, substitution, len2);

        p = strstr(expression + (p - expression) + len2, variable);
    }
}

int main() {
    char expression[MAX_LENGTH];
    char variable[MAX_LENGTH];
    char substitution[MAX_LENGTH];

    printf("Enter the expression: ");
    fgets(expression, sizeof(expression), stdin);
    expression[strcspn(expression, "\n")] = '\0';

    printf("Enter the variable to substitute: ");
    fgets(variable, sizeof(variable), stdin);
    variable[strcspn(variable, "\n")] = '\0';

    printf("Enter the substitution: ");
    fgets(substitution, sizeof(substitution), stdin);
    substitution[strcspn(substitution, "\n")] = '\0';

    substituteExpression(expression, variable, substitution);

    printf("Substituted expression: %s\n", expression);

    return 0;
}

""";

  static const String code_48 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LENGTH 100

int isOperator(char ch) {
    return ch == '+' || ch == '-' || ch == '*' || ch == '/';
}

int isOperand(char ch) {
    return ch >= '0' && ch <= '9';
}

int priority(char ch) {
    if (ch == '+' || ch == '-')
        return 1;
    else if (ch == '*' || ch == '/')
        return 2;
    return 0;
}

void simplifyExpression(char expression[]) {
    char stack[MAX_LENGTH];
    int top = -1;

    int len = strlen(expression);
    char simplified[MAX_LENGTH];
    int index = 0;

    for (int i = 0; i < len; i++) {
        if (isOperand(expression[i])) {
            simplified[index++] = expression[i];
        } else if (isOperator(expression[i])) {
            while (top >= 0 && priority(stack[top]) >= priority(expression[i])) {
                simplified[index++] = stack[top--];
            }
            stack[++top] = expression[i];
        } else if (expression[i] == '(') {
            stack[++top] = expression[i];
        } else if (expression[i] == ')') {
            while (top >= 0 && stack[top] != '(') {
                simplified[index++] = stack[top--];
            }
            if (top >= 0 && stack[top] == '(') {
                top--;
            }
        }
    }

    while (top >= 0) {
        simplified[index++] = stack[top--];
    }

    simplified[index] = '\0';

    strcpy(expression, simplified);
}

int main() {
    char expression[MAX_LENGTH];

    printf("Enter the expression: ");
    fgets(expression, sizeof(expression), stdin);
    expression[strcspn(expression, "\n")] = '\0';

    simplifyExpression(expression);

    printf("Simplified expression: %s\n", expression);

    return 0;
}

""";

  static const String code_49 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <complex.h>
#include <math.h>

#define MAX_LENGTH 100

int isOperator(char ch) {
    return ch == '+' || ch == '-' || ch == '*' || ch == '/';
}

double complex evaluateComplexExpression(char expression[]) {
    double complex result = 0.0 + 0.0 * I;
    double complex operand = 0.0 + 0.0 * I;
    char operator = '+';
    int len = strlen(expression);

    for (int i = 0; i < len; i++) {
        if (expression[i] == ' ')
            continue;

        if (isOperator(expression[i])) {
            operator = expression[i];
        } else if (expression[i] == '(') {
            int j = i + 1;
            int brackets = 1;
            while (brackets > 0) {
                if (expression[j] == '(')
                    brackets++;
                else if (expression[j] == ')')
                    brackets--;
                j++;
            }
            char subexpression[MAX_LENGTH];
            strncpy(subexpression, expression + i + 1, j - i - 2);
            subexpression[j - i - 2] = '\0';
            operand = evaluateComplexExpression(subexpression);

            i = j - 1;
        } else {
            double real = strtod(expression + i, NULL);
            i += strcspn(expression + i, " \t+-*/()");

            double imag = 0.0;
            if (expression[i] == 'i') {
                imag = real;
                real = 0.0;
                i++;
            } else if (expression[i] == '+' && expression[i + 1] == 'i') {
                imag = 1.0;
                i += 2;
            } else if (expression[i] == '-' && expression[i + 1] == 'i') {
                imag = -1.0;
                i += 2;
            }

            operand = real + imag * I;
        }

        switch (operator) {
            case '+':
                result += operand;
                break;
            case '-':
                result -= operand;
                break;
            case '*':
                result *= operand;
                break;
            case '/':
                result /= operand;
                break;
        }
    }

    return result;
}

int main() {
    char expression[MAX_LENGTH];

    printf("Enter the complex expression: ");
    fgets(expression, sizeof(expression), stdin);
    expression[strcspn(expression, "\n")] = '\0';

    double complex result = evaluateComplexExpression(expression);

    printf("Result: %.2f + %.2fi\n", creal(result), cimag(result));

    return 0;
}


""";

  static const String code_50 = r"""
#include <stdio.h>

typedef struct {
    double real;
    double imag;
} Complex;

Complex add(Complex c1, Complex c2) {
    Complex result;
    result.real = c1.real + c2.real;
    result.imag = c1.imag + c2.imag;
    return result;
}

Complex subtract(Complex c1, Complex c2) {
    Complex result;
    result.real = c1.real - c2.real;
    result.imag = c1.imag - c2.imag;
    return result;
}

void simplifyExpression(Complex c1, Complex c2, Complex c3, Complex c4) {
    Complex result1 = add(c1, c2);
    Complex result2 = subtract(result1, c3);
    Complex result3 = add(result2, c4);
    
    printf("Simplified expression: %.2f + %.2fi\n", result3.real, result3.imag);
}

int main() {
    Complex c1 = {3.0, 2.0};
    Complex c2 = {5.0, -4.0};
    Complex c3 = {2.0, -3.0};
    Complex c4 = {1.0, 1.0};

    simplifyExpression(c1, c2, c3, c4);

    return 0;
}


""";

  static const String code_51 = r"""
#include <stdio.h>

typedef struct {
    double real;
    double imag;
} Complex;

Complex add(Complex c1, Complex c2) {
    Complex result;
    result.real = c1.real + c2.real;
    result.imag = c1.imag + c2.imag;
    return result;
}

void performComplexAddition(Complex* expressions, int numExpressions) {
    Complex sum = {0.0, 0.0};
    
    for (int i = 0; i < numExpressions; i++) {
        sum = add(sum, expressions[i]);
    }
    
    printf("Sum of the complex expressions: %.2f + %.2fi\n", sum.real, sum.imag);
}

int main() {
    Complex expressions[] = {
        {2.0, 3.0},
        {5.0, -1.0},
        {1.0, 2.0}
    };
    int numExpressions = sizeof(expressions) / sizeof(expressions[0]);

    performComplexAddition(expressions, numExpressions);

    return 0;
}



""";

  static const String code_52 = r"""
#include <stdio.h>

typedef struct {
    double real;
    double imag;
} Complex;

Complex subtract(Complex c1, Complex c2) {
    Complex result;
    result.real = c1.real - c2.real;
    result.imag = c1.imag - c2.imag;
    return result;
}

void performComplexSubtraction(Complex* expressions, int numExpressions) {
    Complex difference = expressions[0];
    
    for (int i = 1; i < numExpressions; i++) {
        difference = subtract(difference, expressions[i]);
    }
    
    printf("Difference of the complex expressions: %.2f + %.2fi\n", difference.real, difference.imag);
}

int main() {
    Complex expressions[] = {
        {5.0, 3.0},
        {2.0, -1.0},
        {1.0, 2.0}
    };
    int numExpressions = sizeof(expressions) / sizeof(expressions[0]);

    performComplexSubtraction(expressions, numExpressions);

    return 0;
}



""";

  static const String code_53 = r"""
#include <stdio.h>
#include <math.h>

typedef struct {
    double real;
    double imag;
} Complex;

void solveQuadratic(double a, double b, double c) {
    double discriminant = b * b - 4 * a * c;
    
    if (discriminant > 0) {
        double root1 = (-b + sqrt(discriminant)) / (2 * a);
        double root2 = (-b - sqrt(discriminant)) / (2 * a);
        printf("Roots are real and distinct: %.2f, %.2f\n", root1, root2);
    } else if (discriminant == 0) {
        double root = -b / (2 * a);
        printf("Roots are real and equal: %.2f\n", root);
    } else {
        double realPart = -b / (2 * a);
        double imagPart = sqrt(-discriminant) / (2 * a);
        Complex root1 = { realPart, imagPart };
        Complex root2 = { realPart, -imagPart };
        printf("Roots are complex conjugates: %.2f + %.2fi, %.2f - %.2fi\n", root1.real, root1.imag, root2.real, root2.imag);
    }
}

int main() {
    double a, b, c;
    printf("Enter the coefficients (a, b, c) of the quadratic equation: ");
    scanf("%lf %lf %lf", &a, &b, &c);

    solveQuadratic(a, b, c);

    return 0;
}

""";

  static const String code_54 = r"""

#include <stdio.h>
#include <math.h>

void solveQuadratic(double a, double b, double c) {
    double discriminant, realPart, imagPart;
    
    discriminant = b * b - 4 * a * c;
    
    if (discriminant > 0) {
        double root1 = (-b + sqrt(discriminant)) / (2 * a);
        double root2 = (-b - sqrt(discriminant)) / (2 * a);
        
        printf("Roots are real and distinct: %.2f, %.2f\n", root1, root2);
    }
    else if (discriminant == 0) {
        double root = -b / (2 * a);
        
        printf("Roots are real and equal: %.2f\n", root);
    }
    else {
        realPart = -b / (2 * a);
        imagPart = sqrt(-discriminant) / (2 * a);
        
        printf("Roots are complex and imaginary: %.2f + %.2fi, %.2f - %.2fi\n", realPart, imagPart, realPart, imagPart);
    }
}

int main() {
    double a, b, c;
    
    printf("Enter the coefficients (a, b, c) of the quadratic equation: ");
    scanf("%lf %lf %lf", &a, &b, &c);
    
    solveQuadratic(a, b, c);
    
    return 0;
}


""";

  static const String code_55 = r"""

#include <stdio.h>
#include <math.h>

double calculateDiscriminant(double a, double b, double c) {
    return b * b - 4 * a * c;
}

int main() {
    double a, b, c;
    
    printf("Enter the coefficients (a, b, c) of the quadratic equation: ");
    scanf("%lf %lf %lf", &a, &b, &c);
    
    double discriminant = calculateDiscriminant(a, b, c);
    
    printf("Discriminant: %.2f\n", discriminant);
    
    return 0;
}



""";

  static const String code_56 = r"""
  
#include <stdio.h>
#include <math.h>

void calculateVertex(double a, double b, double c, double* x, double* y) {
    *x = -b / (2 * a);
    *y = a * (*x) * (*x) + b * (*x) + c;
}

int main() {
    double a, b, c;
    double x, y;
    
    printf("Enter the coefficients (a, b, c) of the quadratic equation: ");
    scanf("%lf %lf %lf", &a, &b, &c);
    
    calculateVertex(a, b, c, &x, &y);
    
    printf("Vertex: (%.2f, %.2f)\n", x, y);
    
    return 0;
}


""";

  static const String code_57 = r"""
  
#include <stdio.h>

double calculateAxisOfSymmetry(double a, double b) {
    if (a == 0) {
        printf("Error: 'a' coefficient cannot be zero.\n");
        return 0;
    }
    
    return -b / (2 * a);
}

int main() {
    double a, b;
    double axisOfSymmetry;
    
    printf("Enter the coefficients (a, b) of the quadratic equation: ");
    scanf("%lf %lf", &a, &b);
    
    axisOfSymmetry = calculateAxisOfSymmetry(a, b);
    
    printf("Axis of Symmetry: %.2f\n", axisOfSymmetry);
    
    return 0;
}


""";

  static const String code_58 = r"""
#include <stdio.h>
#include <math.h>

#define MAX_X 20
#define MAX_Y 20

double calculateDiscriminant(double a, double b, double c) {
    return b * b - 4 * a * c;
}

void plotGraph(double a, double b, double c, double root1, double root2) {
    int x, y;

    for (y = MAX_Y; y >= 0; y--) {
        for (x = 0; x <= MAX_X; x++) {
            double equationResult = a * pow(x, 2) + b * x + c;

            if (equationResult > y - 0.5 && equationResult < y + 0.5) {
                printf("*");
            } else if (y == MAX_Y / 2 && x == MAX_X / 2) {
                printf("+");
            } else if (x == MAX_X / 2) {
                printf("|");
            } else if (y == MAX_Y / 2) {
                printf("-");
            } else {
                printf(" ");
            }
        }

        printf("\n");
    }
}

void solveQuadraticEquation(double a, double b, double c) {
    double discriminant = calculateDiscriminant(a, b, c);

    if (discriminant > 0) {
        double root1 = (-b + sqrt(discriminant)) / (2 * a);
        double root2 = (-b - sqrt(discriminant)) / (2 * a);

        printf("Root 1: %.2f\n", root1);
        printf("Root 2: %.2f\n", root2);

        plotGraph(a, b, c, root1, root2);
    } else if (discriminant == 0) {
        double root = -b / (2 * a);

        printf("Root: %.2f\n", root);

        plotGraph(a, b, c, root, root);
    } else {
        printf("No real roots exist.\n");
    }
}

int main() {
    double a, b, c;

    printf("Enter the coefficients (a, b, c) of the quadratic equation: ");
    scanf("%lf %lf %lf", &a, &b, &c);

    solveQuadraticEquation(a, b, c);

    return 0;
}

""";

  static const String code_59 = r"""
  
#include <stdio.h>
#include <math.h>

double degreeToRadian(double degree) {
    return degree * M_PI / 180.0;
}

void calculateTrigonometricFunctions(double angle) {
    double radian = degreeToRadian(angle);
    double sine = sin(radian);
    double cosine = cos(radian);
    double tangent = tan(radian);

    printf("Angle: %.2f degrees\n", angle);
    printf("Sine: %.4f\n", sine);
    printf("Cosine: %.4f\n", cosine);
    printf("Tangent: %.4f\n", tangent);
}

int main() {
    double angle;

    printf("Enter an angle in degrees: ");
    scanf("%lf", &angle);

    calculateTrigonometricFunctions(angle);

    return 0;
}


""";

  static const String code_60 = r"""
  
#include <stdio.h>
#include <math.h>

double degreeToRadian(double degree) {
    return degree * M_PI / 180.0;
}

void calculateInverseTrigonometricFunctions(double value) {
    double asinValue = asin(value);
    double acosValue = acos(value);
    double atanValue = atan(value);

    printf("Value: %.4f\n", value);
    printf("Inverse Sine: %.4f radians\n", asinValue);
    printf("Inverse Cosine: %.4f radians\n", acosValue);
    printf("Inverse Tangent: %.4f radians\n", atanValue);
    printf("Inverse Sine: %.4f degrees\n", degreeToRadian(asinValue));
    printf("Inverse Cosine: %.4f degrees\n", degreeToRadian(acosValue));
    printf("Inverse Tangent: %.4f degrees\n", degreeToRadian(atanValue));
}

int main() {
    double value;

    printf("Enter a value: ");
    scanf("%lf", &value);

    calculateInverseTrigonometricFunctions(value);

    return 0;
}




""";

  static const String code_61 = r"""
  
#include <stdio.h>
#include <math.h>

#define EPSILON 1e-6

int verifyIdentity1(double x) {
    double result = sin(x) * sin(x) + cos(x) * cos(x);
    return fabs(result - 1.0) < EPSILON;
}

int verifyIdentity2(double x) {
    double result = tan(x) * tan(x) + 1.0;
    return fabs(result - (1.0 / cos(x) / cos(x))) < EPSILON;
}

int main() {
    double x;

    printf("Enter a value for x: ");
    scanf("%lf", &x);

    int identity1 = verifyIdentity1(x);
    int identity2 = verifyIdentity2(x);

    printf("Identity 1 (sin^2(x) + cos^2(x) = 1): %s\n", identity1 ? "True" : "False");
    printf("Identity 2 (tan^2(x) + 1 = sec^2(x)): %s\n", identity2 ? "True" : "False");

    return 0;
}

""";

  static const String code_62 = r"""
  
#include <stdio.h>
#include <math.h>

#define PI 3.14159265
#define SCALE_FACTOR 20

int main() {
    int i, j;
    double x, y;

    for (i = -180; i <= 180; i += 10) {
        x = i * PI / 180;
        y = sin(x);

        int scaledY = (int)(y * SCALE_FACTOR);

        // Draw the graph using ASCII characters
        for (j = -SCALE_FACTOR; j <= SCALE_FACTOR; j++) {
            if (j == scaledY) {
                printf("*");
            } else if (j == 0) {
                printf("-");
            } else {
                printf(" ");
            }
        }

        printf("\n");
    }

    return 0;
}


""";

  static const String code_63 = r"""
#include <stdio.h>

float calculateTriangleArea(float base, float height) {
    return (0.5 * base * height);
}

int main() {
    float base, height;
    
    printf("Enter the base of the triangle: ");
    scanf("%f", &base);
    
    printf("Enter the height of the triangle: ");
    scanf("%f", &height);
    
    float area = calculateTriangleArea(base, height);
    
    printf("The area of the triangle is: %.2f\n", area);
    
    return 0;
}


""";

  static const String code_64 = r"""
#include <stdio.h>

float calculateTrianglePerimeter(float side1, float side2, float side3) {
    return (side1 + side2 + side3);
}

int main() {
    float side1, side2, side3;
    
    printf("Enter the length of side 1: ");
    scanf("%f", &side1);
    
    printf("Enter the length of side 2: ");
    scanf("%f", &side2);
    
    printf("Enter the length of side 3: ");
    scanf("%f", &side3);
    
    float perimeter = calculateTrianglePerimeter(side1, side2, side3);
    
    printf("The perimeter of the triangle is: %.2f\n", perimeter);
    
    return 0;
}



""";

  static const String code_65 = r"""
  
#include <stdio.h>

void determineTriangleType(float side1, float side2, float side3) {
    if (side1 == side2 && side2 == side3) {
        printf("The triangle is Equilateral.\n");
    } else if (side1 == side2 || side1 == side3 || side2 == side3) {
        printf("The triangle is Isosceles.\n");
    } else {
        printf("The triangle is Scalene.\n");
    }
}

int main() {
    float side1, side2, side3;
    
    printf("Enter the length of side 1: ");
    scanf("%f", &side1);
    
    printf("Enter the length of side 2: ");
    scanf("%f", &side2);
    
    printf("Enter the length of side 3: ");
    scanf("%f", &side3);
    
    determineTriangleType(side1, side2, side3);
    
    return 0;
}


""";

  static const String code_66 = r"""
  
#include <stdio.h>
#include <math.h>

#define PI 3.14159265

// Function to calculate angle in degrees using the Law of Cosines
double calculateAngleCosines(double sideA, double sideB, double sideC) {
    double angle;
    angle = acos((pow(sideA, 2) + pow(sideB, 2) - pow(sideC, 2)) / (2 * sideA * sideB));
    return angle * 180 / PI;
}

// Function to calculate angle in degrees using the Law of Sines
double calculateAngleSines(double sideA, double sideB, double sideC) {
    double angle;
    angle = asin((sideB * sin(PI * calculateAngleCosines(sideA, sideB, sideC) / 180)) / sideC);
    return angle * 180 / PI;
}

int main() {
    double sideA, sideB, sideC;
    
    printf("Enter the length of side A: ");
    scanf("%lf", &sideA);
    
    printf("Enter the length of side B: ");
    scanf("%lf", &sideB);
    
    printf("Enter the length of side C: ");
    scanf("%lf", &sideC);
    
    double angleA = calculateAngleCosines(sideB, sideC, sideA);
    double angleB = calculateAngleCosines(sideA, sideC, sideB);
    double angleC = 180 - angleA - angleB;
    
    printf("Angle A: %.2lf degrees\n", angleA);
    printf("Angle B: %.2lf degrees\n", angleB);
    printf("Angle C: %.2lf degrees\n", angleC);
    
    return 0;
}


""";

  static const String code_67 = r"""
  
#include <stdio.h>
#define PI 3.14159

float calculate_circle_area(float radius) {
    if (radius < 0) {
        printf("Error: Radius cannot be negative.\n");
        return -1;
    } else {
        float area = PI * radius * radius;
        return area;
    }
}

int main() {
    float radius;
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);

    float area = calculate_circle_area(radius);
    if (area != -1) {
        printf("The area of the circle is: %.2f\n", area);
    }

    return 0;
}



""";

  static const String code_68 = r"""
#include <stdio.h>
#define PI 3.14159

float calculate_circle_circumference(float radius) {
    if (radius < 0) {
        printf("Error: Radius cannot be negative.\n");
        return -1;
    } else {
        float circumference = 2 * PI * radius;
        return circumference;
    }
}

int main() {
    float radius;
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);

    float circumference = calculate_circle_circumference(radius);
    if (circumference != -1) {
        printf("The circumference of the circle is: %.2f\n", circumference);
    }

    return 0;
}

""";

  static const String code_69 = r"""
  
#include <stdio.h>

float calculate_circle_diameter(float radius) {
    if (radius < 0) {
        printf("Error: Radius cannot be negative.\n");
        return -1;
    } else {
        float diameter = 2 * radius;
        return diameter;
    }
}

int main() {
    float radius;
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);

    float diameter = calculate_circle_diameter(radius);
    if (diameter != -1) {
        printf("The diameter of the circle is: %.2f\n", diameter);
    }

    return 0;
}



""";

  static const String code_70 = r"""
  
#include <stdio.h>
#include <math.h>

#define PI 3.14159

float calculate_circle_sector(float radius, float angle) {
    if (radius < 0) {
        printf("Error: Radius cannot be negative.\n");
        return -1;
    } else if (angle < 0 || angle > 360) {
        printf("Error: Angle must be between 0 and 360 degrees.\n");
        return -1;
    } else {
        float sector_area = (angle / 360) * PI * pow(radius, 2);
        return sector_area;
    }
}

float calculate_circle_segment(float radius, float angle) {
    if (radius < 0) {
        printf("Error: Radius cannot be negative.\n");
        return -1;
    } else if (angle < 0 || angle > 360) {
        printf("Error: Angle must be between 0 and 360 degrees.\n");
        return -1;
    } else {
        float segment_area = (pow(radius, 2) / 2) * (angle - sin(angle * PI / 180));
        return segment_area;
    }
}

int main() {
    float radius, angle;
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);
    printf("Enter the angle in degrees: ");
    scanf("%f", &angle);

    float sector_area = calculate_circle_sector(radius, angle);
    if (sector_area != -1) {
        printf("The area of the circle sector is: %.2f\n", sector_area);
    }

    float segment_area = calculate_circle_segment(radius, angle);
    if (segment_area != -1) {
        printf("The area of the circle segment is: %.2f\n", segment_area);
    }

    return 0;
}

""";

  static const String code_71 = r"""
#include <stdio.h>

float calculate_rectangle_area(float length, float width) {
    if (length < 0 || width < 0) {
        printf("Error: Length and width cannot be negative.\n");
        return -1;
    } else {
        float area = length * width;
        return area;
    }
}

int main() {
    float length, width;
    printf("Enter the length of the rectangle: ");
    scanf("%f", &length);
    printf("Enter the width of the rectangle: ");
    scanf("%f", &width);

    float area = calculate_rectangle_area(length, width);
    if (area != -1) {
        printf("The area of the rectangle is: %.2f\n", area);
    }

    return 0;
}


""";

  static const String code_72 = r"""
  
#include <stdio.h>

float calculate_rectangle_perimeter(float length, float width) {
    if (length < 0 || width < 0) {
        printf("Error: Length and width cannot be negative.\n");
        return -1;
    } else {
        float perimeter = 2 * (length + width);
        return perimeter;
    }
}

int main() {
    float length, width;
    printf("Enter the length of the rectangle: ");
    scanf("%f", &length);
    printf("Enter the width of the rectangle: ");
    scanf("%f", &width);

    float perimeter = calculate_rectangle_perimeter(length, width);
    if (perimeter != -1) {
        printf("The perimeter of the rectangle is: %.2f\n", perimeter);
    }

    return 0;
}


""";

  static const String code_73 = r"""
#include <stdio.h>

float calculate_square_area(float side) {
    if (side < 0) {
        printf("Error: Side length cannot be negative.\n");
        return -1;
    } else {
        float area = side * side;
        return area;
    }
}

int main() {
    float side;
    printf("Enter the side length of the square: ");
    scanf("%f", &side);

    float area = calculate_square_area(side);
    if (area != -1) {
        printf("The area of the square is: %.2f\n", area);
    }

    return 0;
}

""";

  static const String code_74 = r"""
#include <stdio.h>

float calculate_square_perimeter(float side) {
    if (side < 0) {
        printf("Error: Side length cannot be negative.\n");
        return -1;
    } else {
        float perimeter = 4 * side;
        return perimeter;
    }
}

int main() {
    float side;
    printf("Enter the side length of the square: ");
    scanf("%f", &side);

    float perimeter = calculate_square_perimeter(side);
    if (perimeter != -1) {
        printf("The perimeter of the square is: %.2f\n", perimeter);
    }

    return 0;
}

""";

  static const String code_75 = r"""
#include <stdio.h>

float calculate_parallelogram_area(float base, float height) {
    if (base < 0 || height < 0) {
        printf("Error: Base and height cannot be negative.\n");
        return -1;
    } else {
        float area = base * height;
        return area;
    }
}

int main() {
    float base, height;
    printf("Enter the base of the parallelogram: ");
    scanf("%f", &base);
    printf("Enter the height of the parallelogram: ");
    scanf("%f", &height);

    float area = calculate_parallelogram_area(base, height);
    if (area != -1) {
        printf("The area of the parallelogram is: %.2f\n", area);
    }

    return 0;
}


""";

  static const String code_76 = r"""
 #include <stdio.h>

float calculate_parallelogram_perimeter(float side1, float side2) {
    if (side1 < 0 || side2 < 0) {
        printf("Error: Side lengths cannot be negative.\n");
        return -1;
    } else {
        float perimeter = 2 * (side1 + side2);
        return perimeter;
    }
}

int main() {
    float side1, side2;
    printf("Enter the length of side 1 of the parallelogram: ");
    scanf("%f", &side1);
    printf("Enter the length of side 2 of the parallelogram: ");
    scanf("%f", &side2);

    float perimeter = calculate_parallelogram_perimeter(side1, side2);
    if (perimeter != -1) {
        printf("The perimeter of the parallelogram is: %.2f\n", perimeter);
    }

    return 0;
}

""";

  static const String code_77 = r"""
  
#include <stdio.h>

float calculate_rhombus_area(float diagonal1, float diagonal2) {
    if (diagonal1 < 0 || diagonal2 < 0) {
        printf("Error: Diagonals cannot be negative.\n");
        return -1;
    } else {
        float area = (diagonal1 * diagonal2) / 2;
        return area;
    }
}

int main() {
    float diagonal1, diagonal2;
    printf("Enter the length of diagonal 1 of the rhombus: ");
    scanf("%f", &diagonal1);
    printf("Enter the length of diagonal 2 of the rhombus: ");
    scanf("%f", &diagonal2);

    float area = calculate_rhombus_area(diagonal1, diagonal2);
    if (area != -1) {
        printf("The area of the rhombus is: %.2f\n", area);
    }

    return 0;
}

""";

  static const String code_78 = r"""
#include <stdio.h>

float calculate_rhombus_perimeter(float side) {
    if (side < 0) {
        printf("Error: Side length cannot be negative.\n");
        return -1;
    } else {
        float perimeter = 4 * side;
        return perimeter;
    }
}

int main() {
    float side;
    printf("Enter the length of a side of the rhombus: ");
    scanf("%f", &side);

    float perimeter = calculate_rhombus_perimeter(side);
    if (perimeter != -1) {
        printf("The perimeter of the rhombus is: %.2f\n", perimeter);
    }

    return 0;
}

""";

  static const String code_79 = r"""
  
#include <stdio.h>

float calculate_trapezoid_area(float base1, float base2, float height) {
    if (base1 < 0 || base2 < 0 || height < 0) {
        printf("Error: Base and height cannot be negative.\n");
        return -1;
    } else {
        float area = (base1 + base2) * height / 2;
        return area;
    }
}

int main() {
    float base1, base2, height;
    printf("Enter the length of base 1 of the trapezoid: ");
    scanf("%f", &base1);
    printf("Enter the length of base 2 of the trapezoid: ");
    scanf("%f", &base2);
    printf("Enter the height of the trapezoid: ");
    scanf("%f", &height);

    float area = calculate_trapezoid_area(base1, base2, height);
    if (area != -1) {
        printf("The area of the trapezoid is: %.2f\n", area);
    }

    return 0;
}

""";

  static const String code_80 = r"""
  
#include <stdio.h>

float calculate_trapezoid_perimeter(float base1, float base2, float side1, float side2) {
    if (base1 < 0 || base2 < 0 || side1 < 0 || side2 < 0) {
        printf("Error: Base and side lengths cannot be negative.\n");
        return -1;
    } else {
        float perimeter = base1 + base2 + side1 + side2;
        return perimeter;
    }
}

int main() {
    float base1, base2, side1, side2;
    printf("Enter the length of base 1 of the trapezoid: ");
    scanf("%f", &base1);
    printf("Enter the length of base 2 of the trapezoid: ");
    scanf("%f", &base2);
    printf("Enter the length of side 1 of the trapezoid: ");
    scanf("%f", &side1);
    printf("Enter the length of side 2 of the trapezoid: ");
    scanf("%f", &side2);

    float perimeter = calculate_trapezoid_perimeter(base1, base2, side1, side2);
    if (perimeter != -1) {
        printf("The perimeter of the trapezoid is: %.2f\n", perimeter);
    }

    return 0;
}

""";

  static const String code_81 = r"""
  
#include <stdio.h>
#include <math.h>

float calculate_cone_volume(float radius, float height) {
    if (radius < 0 || height < 0) {
        printf("Error: Radius and height cannot be negative.\n");
        return -1;
    } else {
        float volume = (M_PI * pow(radius, 2) * height) / 3;
        return volume;
    }
}

int main() {
    float radius, height;
    printf("Enter the radius of the cone: ");
    scanf("%f", &radius);
    printf("Enter the height of the cone: ");
    scanf("%f", &height);

    float volume = calculate_cone_volume(radius, height);
    if (volume != -1) {
        printf("The volume of the cone is: %.2f\n", volume);
    }

    return 0;
}

""";

  static const String code_82 = r"""
  
#include <stdio.h>
#include <math.h>

float calculate_cone_surface_area(float radius, float height) {
    if (radius < 0 || height < 0) {
        printf("Error: Radius and height cannot be negative.\n");
        return -1;
    } else {
        float slant_height = sqrt(pow(radius, 2) + pow(height, 2));
        float base_area = M_PI * pow(radius, 2);
        float lateral_area = M_PI * radius * slant_height;
        float surface_area = base_area + lateral_area;
        return surface_area;
    }
}

int main() {
    float radius, height;
    printf("Enter the radius of the cone: ");
    scanf("%f", &radius);
    printf("Enter the height of the cone: ");
    scanf("%f", &height);

    float surface_area = calculate_cone_surface_area(radius, height);
    if (surface_area != -1) {
        printf("The surface area of the cone is: %.2f\n", surface_area);
    }

    return 0;
}

""";

  static const String code_83 = r"""
#include <stdio.h>
#include <math.h>

float calculate_cylinder_volume(float radius, float height) {
    if (radius < 0 || height < 0) {
        printf("Error: Radius and height cannot be negative.\n");
        return -1;
    } else {
        float volume = M_PI * pow(radius, 2) * height;
        return volume;
    }
}

int main() {
    float radius, height;
    printf("Enter the radius of the cylinder: ");
    scanf("%f", &radius);
    printf("Enter the height of the cylinder: ");
    scanf("%f", &height);

    float volume = calculate_cylinder_volume(radius, height);
    if (volume != -1) {
        printf("The volume of the cylinder is: %.2f\n", volume);
    }

    return 0;
}



""";

  static const String code_84 = r"""
#include <stdio.h>
#include <math.h>

float calculate_cylinder_surface_area(float radius, float height) {
    if (radius < 0 || height < 0) {
        printf("Error: Radius and height cannot be negative.\n");
        return -1;
    } else {
        float base_area = M_PI * pow(radius, 2);
        float lateral_area = 2 * M_PI * radius * height;
        float total_area = 2 * base_area + lateral_area;
        return total_area;
    }
}

int main() {
    float radius, height;
    printf("Enter the radius of the cylinder: ");
    scanf("%f", &radius);
    printf("Enter the height of the cylinder: ");
    scanf("%f", &height);

    float surface_area = calculate_cylinder_surface_area(radius, height);
    if (surface_area != -1) {
        printf("The surface area of the cylinder is: %.2f\n", surface_area);
    }

    return 0;
}

""";

  static const String code_85 = r"""
  
#include <stdio.h>
#include <math.h>

float calculate_sphere_volume(float radius) {
    if (radius < 0) {
        printf("Error: Radius cannot be negative.\n");
        return -1;
    } else {
        float volume = (4.0 / 3.0) * M_PI * pow(radius, 3);
        return volume;
    }
}

int main() {
    float radius;
    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    float volume = calculate_sphere_volume(radius);
    if (volume != -1) {
        printf("The volume of the sphere is: %.2f\n", volume);
    }

    return 0;
}


""";

  static const String code_86 = r"""
  
#include <stdio.h>
#include <math.h>

float calculate_sphere_surface_area(float radius) {
    if (radius < 0) {
        printf("Error: Radius cannot be negative.\n");
        return -1;
    } else {
        float surface_area = 4 * M_PI * pow(radius, 2);
        return surface_area;
    }
}

int main() {
    float radius;
    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    float surface_area = calculate_sphere_surface_area(radius);
    if (surface_area != -1) {
        printf("The surface area of the sphere is: %.2f\n", surface_area);
    }

    return 0;
}

""";

  static const String code_87 = r"""
  
#include <stdio.h>

float calculate_pyramid_volume(float base_length, float base_width, float height) {
    if (base_length < 0 || base_width < 0 || height < 0) {
        printf("Error: Base length, base width, and height cannot be negative.\n");
        return -1;
    } else {
        float volume = (base_length * base_width * height) / 3.0;
        return volume;
    }
}

int main() {
    float base_length, base_width, height;
    printf("Enter the base length of the pyramid: ");
    scanf("%f", &base_length);
    printf("Enter the base width of the pyramid: ");
    scanf("%f", &base_width);
    printf("Enter the height of the pyramid: ");
    scanf("%f", &height);

    float volume = calculate_pyramid_volume(base_length, base_width, height);
    if (volume != -1) {
        printf("The volume of the pyramid is: %.2f\n", volume);
    }

    return 0;
}


""";

  static const String code_88 = r"""
#include <stdio.h>
#include <math.h>

float calculate_pyramid_surface_area(float base_length, float base_width, float height) {
    if (base_length < 0 || base_width < 0 || height < 0) {
        printf("Error: Base length, base width, and height cannot be negative.\n");
        return -1;
    } else {
        float slant_height = sqrt(pow(base_length / 2, 2) + pow(height, 2));
        float base_area = base_length * base_width;
        float lateral_area = (base_length + base_width) * slant_height;
        float total_area = base_area + lateral_area;
        return total_area;
    }
}

int main() {
    float base_length, base_width, height;
    printf("Enter the base length of the pyramid: ");
    scanf("%f", &base_length);
    printf("Enter the base width of the pyramid: ");
    scanf("%f", &base_width);
    printf("Enter the height of the pyramid: ");
    scanf("%f", &height);

    float surface_area = calculate_pyramid_surface_area(base_length, base_width, height);
    if (surface_area != -1) {
        printf("The surface area of the pyramid is: %.2f\n", surface_area);
    }

    return 0;
}

""";

  static const String code_89 = r"""
  
#include <stdio.h>

float calculate_prism_volume(float base_area, float height) {
    if (base_area < 0 || height < 0) {
        printf("Error: Base area and height cannot be negative.\n");
        return -1;
    } else {
        float volume = base_area * height;
        return volume;
    }
}

int main() {
    float base_area, height;
    printf("Enter the base area of the prism: ");
    scanf("%f", &base_area);
    printf("Enter the height of the prism: ");
    scanf("%f", &height);

    float volume = calculate_prism_volume(base_area, height);
    if (volume != -1) {
        printf("The volume of the prism is: %.2f\n", volume);
    }

    return 0;
}


""";

  static const String code_90 = r"""
  
#include <stdio.h>

float calculate_prism_surface_area(float base_perimeter, float base_area, float lateral_area) {
    if (base_perimeter < 0 || base_area < 0 || lateral_area < 0) {
        printf("Error: Base perimeter, base area, and lateral area cannot be negative.\n");
        return -1;
    } else {
        float surface_area = 2 * base_area + lateral_area;
        return surface_area;
    }
}

int main() {
    float base_perimeter, base_area, lateral_area;
    printf("Enter the base perimeter of the prism: ");
    scanf("%f", &base_perimeter);
    printf("Enter the base area of the prism: ");
    scanf("%f", &base_area);
    printf("Enter the lateral area of the prism: ");
    scanf("%f", &lateral_area);

    float surface_area = calculate_prism_surface_area(base_perimeter, base_area, lateral_area);
    if (surface_area != -1) {
        printf("The surface area of the prism is: %.2f\n", surface_area);
    }

    return 0;
}

""";

  static const String code_91 = r"""
 #include <stdio.h>

float calculate_cuboid_volume(float length, float width, float height) {
    if (length < 0 || width < 0 || height < 0) {
        printf("Error: Length, width, and height cannot be negative.\n");
        return -1;
    } else {
        float volume = length * width * height;
        return volume;
    }
}

int main() {
    float length, width, height;
    printf("Enter the length of the cuboid: ");
    scanf("%f", &length);
    printf("Enter the width of the cuboid: ");
    scanf("%f", &width);
    printf("Enter the height of the cuboid: ");
    scanf("%f", &height);

    float volume = calculate_cuboid_volume(length, width, height);
    if (volume != -1) {
        printf("The volume of the cuboid is: %.2f\n", volume);
    }

    return 0;
}


""";

  static const String code_92 = r"""
  
#include <stdio.h>

float calculate_cuboid_surface_area(float length, float width, float height) {
    if (length < 0 || width < 0 || height < 0) {
        printf("Error: Length, width, and height cannot be negative.\n");
        return -1;
    } else {
        float surface_area = 2 * (length * width + length * height + width * height);
        return surface_area;
    }
}

int main() {
    float length, width, height;
    printf("Enter the length of the cuboid: ");
    scanf("%f", &length);
    printf("Enter the width of the cuboid: ");
    scanf("%f", &width);
    printf("Enter the height of the cuboid: ");
    scanf("%f", &height);

    float surface_area = calculate_cuboid_surface_area(length, width, height);
    if (surface_area != -1) {
        printf("The surface area of the cuboid is: %.2f\n", surface_area);
    }

    return 0;
}

""";

  static const String code_93 = r"""
#include <stdio.h>
#include <math.h>

float calculate_regular_polygon_area(int num_sides, float side_length) {
    if (num_sides < 3 || side_length < 0) {
        printf("Error: Number of sides should be at least 3 and side length should be non-negative.\n");
        return -1;
    } else {
        float area = (0.25 * num_sides * side_length * side_length) / tan(M_PI / num_sides);
        return area;
    }
}

int main() {
    int num_sides;
    float side_length;
    
    printf("Enter the number of sides of the regular polygon: ");
    scanf("%d", &num_sides);
    
    printf("Enter the length of each side of the regular polygon: ");
    scanf("%f", &side_length);

    float area = calculate_regular_polygon_area(num_sides, side_length);
    if (area != -1) {
        printf("The area of the regular polygon is: %.2f\n", area);
    }

    return 0;
}


""";

  static const String code_94 = r"""
#include <stdio.h>

float calculate_regular_polygon_perimeter(int num_sides, float side_length) {
    if (num_sides < 3 || side_length < 0) {
        printf("Error: Number of sides should be at least 3 and side length should be non-negative.\n");
        return -1;
    } else {
        float perimeter = num_sides * side_length;
        return perimeter;
    }
}

int main() {
    int num_sides;
    float side_length;
    
    printf("Enter the number of sides of the regular polygon: ");
    scanf("%d", &num_sides);
    
    printf("Enter the length of each side of the regular polygon: ");
    scanf("%f", &side_length);

    float perimeter = calculate_regular_polygon_perimeter(num_sides, side_length);
    if (perimeter != -1) {
        printf("The perimeter of the regular polygon is: %.2f\n", perimeter);
    }

    return 0;
}



""";

  static const String code_95 = r"""
  
#include <stdio.h>

typedef struct {
    float x;
    float y;
    float z;
} Vector;

Vector add_vectors(Vector A, Vector B) {
    Vector C;
    C.x = A.x + B.x;
    C.y = A.y + B.y;
    C.z = A.z + B.z;
    return C;
}

int main() {
    Vector A, B;
    
    printf("Enter the components of vector A:\n");
    printf("Ax: ");
    scanf("%f", &A.x);
    printf("Ay: ");
    scanf("%f", &A.y);
    printf("Az: ");
    scanf("%f", &A.z);
    
    printf("Enter the components of vector B:\n");
    printf("Bx: ");
    scanf("%f", &B.x);
    printf("By: ");
    scanf("%f", &B.y);
    printf("Bz: ");
    scanf("%f", &B.z);
    
    Vector C = add_vectors(A, B);
    printf("The resulting vector C is (%.2f, %.2f, %.2f)\n", C.x, C.y, C.z);
    
    return 0;
}


""";

  static const String code_96 = r"""
  
#include <stdio.h>

typedef struct {
    float x;
    float y;
    float z;
} Vector;

Vector subtract_vectors(Vector A, Vector B) {
    Vector C;
    C.x = A.x - B.x;
    C.y = A.y - B.y;
    C.z = A.z - B.z;
    return C;
}

int main() {
    Vector A, B;
    
    printf("Enter the components of vector A:\n");
    printf("Ax: ");
    scanf("%f", &A.x);
    printf("Ay: ");
    scanf("%f", &A.y);
    printf("Az: ");
    scanf("%f", &A.z);
    
    printf("Enter the components of vector B:\n");
    printf("Bx: ");
    scanf("%f", &B.x);
    printf("By: ");
    scanf("%f", &B.y);
    printf("Bz: ");
    scanf("%f", &B.z);
    
    Vector C = subtract_vectors(A, B);
    printf("The resulting vector C is (%.2f, %.2f, %.2f)\n", C.x, C.y, C.z);
    
    return 0;
}



""";

  static const String code_97 = r"""
#include <stdio.h>

typedef struct {
    float x;
    float y;
    float z;
} Vector;

Vector scalar_multiply_vector(Vector A, float k) {
    Vector B;
    B.x = k * A.x;
    B.y = k * A.y;
    B.z = k * A.z;
    return B;
}

int main() {
    Vector A;
    float scalar;
    
    printf("Enter the components of the vector:\n");
    printf("Ax: ");
    scanf("%f", &A.x);
    printf("Ay: ");
    scanf("%f", &A.y);
    printf("Az: ");
    scanf("%f", &A.z);
    
    printf("Enter the scalar value: ");
    scanf("%f", &scalar);
    
    Vector B = scalar_multiply_vector(A, scalar);
    printf("The resulting vector B is (%.2f, %.2f, %.2f)\n", B.x, B.y, B.z);
    
    return 0;
}

""";

  static const String code_98 = r"""
#include <stdio.h>

typedef struct {
    float x;
    float y;
    float z;
} Vector;

float dot_product(Vector A, Vector B) {
    float dot = A.x * B.x + A.y * B.y + A.z * B.z;
    return dot;
}

int main() {
    Vector A, B;
    
    printf("Enter the components of vector A:\n");
    printf("Ax: ");
    scanf("%f", &A.x);
    printf("Ay: ");
    scanf("%f", &A.y);
    printf("Az: ");
    scanf("%f", &A.z);
    
    printf("Enter the components of vector B:\n");
    printf("Bx: ");
    scanf("%f", &B.x);
    printf("By: ");
    scanf("%f", &B.y);
    printf("Bz: ");
    scanf("%f", &B.z);
    
    float dot = dot_product(A, B);
    printf("The dot product of A and B is %.2f\n", dot);
    
    return 0;
}

""";

  static const String code_99 = r"""
  
#include <stdio.h>

typedef struct {
    float x;
    float y;
    float z;
} Vector;

Vector cross_product(Vector A, Vector B) {
    Vector C;
    C.x = A.y * B.z - A.z * B.y;
    C.y = A.z * B.x - A.x * B.z;
    C.z = A.x * B.y - A.y * B.x;
    return C;
}

int main() {
    Vector A, B;
    
    printf("Enter the components of vector A:\n");
    printf("Ax: ");
    scanf("%f", &A.x);
    printf("Ay: ");
    scanf("%f", &A.y);
    printf("Az: ");
    scanf("%f", &A.z);
    
    printf("Enter the components of vector B:\n");
    printf("Bx: ");
    scanf("%f", &B.x);
    printf("By: ");
    scanf("%f", &B.y);
    printf("Bz: ");
    scanf("%f", &B.z);
    
    Vector C = cross_product(A, B);
    printf("The cross product of A and B is (%.2f, %.2f, %.2f)\n", C.x, C.y, C.z);
    
    return 0;
}

""";

  static const String code_100 = r"""
  
#include <stdio.h>
#include <math.h>

typedef struct {
    float x;
    float y;
    float z;
} Vector;

float calculate_magnitude(Vector v) {
    float magnitude = sqrt(v.x * v.x + v.y * v.y + v.z * v.z);
    return magnitude;
}

int main() {
    Vector v;
    
    printf("Enter the components of the vector:\n");
    printf("x: ");
    scanf("%f", &v.x);
    printf("y: ");
    scanf("%f", &v.y);
    printf("z: ");
    scanf("%f", &v.z);
    
    float magnitude = calculate_magnitude(v);
    printf("The magnitude of the vector is %.2f\n", magnitude);
    
    return 0;
}


""";

  static const String code_101 = r"""
#include <stdio.h>
#include <math.h>

typedef struct {
    float x;
    float y;
    float z;
} Vector;

void calculate_direction(Vector v, Vector *direction) {
    float magnitude = sqrt(v.x * v.x + v.y * v.y + v.z * v.z);
    direction->x = v.x / magnitude;
    direction->y = v.y / magnitude;
    direction->z = v.z / magnitude;
}

int main() {
    Vector v, direction;
    
    printf("Enter the components of the vector:\n");
    printf("x: ");
    scanf("%f", &v.x);
    printf("y: ");
    scanf("%f", &v.y);
    printf("z: ");
    scanf("%f", &v.z);
    
    calculate_direction(v, &direction);
    printf("The direction of the vector is (%.2f, %.2f, %.2f)\n", direction.x, direction.y, direction.z);
    
    return 0;
}

""";

  static const String code_102 = r"""
  
#include <stdio.h>

float calculate_arithmetic_mean(float numbers[], int count) {
    float sum = 0.0;
    for (int i = 0; i < count; i++) {
        sum += numbers[i];
    }
    return sum / count;
}

int main() {
    int count;
    printf("Enter the total number of values: ");
    scanf("%d", &count);
    
    float numbers[count];
    printf("Enter the values:\n");
    for (int i = 0; i < count; i++) {
        printf("Value %d: ", i + 1);
        scanf("%f", &numbers[i]);
    }
    
    float mean = calculate_arithmetic_mean(numbers, count);
    printf("The arithmetic mean is: %.2f\n", mean);
    
    return 0;
}

""";

  static const String code_103 = r"""
  
#include <stdio.h>
#include <math.h>

double calculate_geometric_mean(double numbers[], int count) {
    double product = 1.0;
    for (int i = 0; i < count; i++) {
        product *= numbers[i];
    }
    return pow(product, 1.0 / count);
}

int main() {
    int count;
    printf("Enter the total number of values: ");
    scanf("%d", &count);
    
    double numbers[count];
    printf("Enter the values:\n");
    for (int i = 0; i < count; i++) {
        printf("Value %d: ", i + 1);
        scanf("%lf", &numbers[i]);
    }
    
    double geometric_mean = calculate_geometric_mean(numbers, count);
    printf("The geometric mean is: %.2lf\n", geometric_mean);
    
    return 0;
}


""";

  static const String code_104 = r"""
#include <stdio.h>

double calculate_harmonic_mean(double numbers[], int count) {
    double sum = 0.0;
    for (int i = 0; i < count; i++) {
        sum += 1.0 / numbers[i];
    }
    return count / sum;
}

int main() {
    int count;
    printf("Enter the total number of values: ");
    scanf("%d", &count);
    
    double numbers[count];
    printf("Enter the values:\n");
    for (int i = 0; i < count; i++) {
        printf("Value %d: ", i + 1);
        scanf("%lf", &numbers[i]);
    }
    
    double harmonic_mean = calculate_harmonic_mean(numbers, count);
    printf("The harmonic mean is: %.2lf\n", harmonic_mean);
    
    return 0;
}


""";

  static const String code_105 = r"""
 #include <stdio.h>
#include <math.h>

double calculate_standard_deviation(double numbers[], int count) {
    double sum = 0.0;
    double mean = 0.0;

    for (int i = 0; i < count; i++) {
        sum += numbers[i];
    }

    mean = sum / count;
    sum = 0.0;

    for (int i = 0; i < count; i++) {
        sum += pow(numbers[i] - mean, 2);
    }

    double variance = sum / count;
    double standard_deviation = sqrt(variance);

    return standard_deviation;
}

int main() {
    int count;
    printf("Enter the total number of values: ");
    scanf("%d", &count);

    double numbers[count];
    printf("Enter the values:\n");
    for (int i = 0; i < count; i++) {
        printf("Value %d: ", i + 1);
        scanf("%lf", &numbers[i]);
    }

    double standard_deviation = calculate_standard_deviation(numbers, count);
    printf("The standard deviation is: %.2lf\n", standard_deviation);

    return 0;
}


""";

  static const String code_106 = r"""
  
#include <stdio.h>
#include <math.h>

double calculate_mean(double numbers[], int count) {
    double sum = 0.0;
    for (int i = 0; i < count; i++) {
        sum += numbers[i];
    }
    return sum / count;
}

double calculate_variance(double numbers[], int count) {
    double mean = calculate_mean(numbers, count);
    double sum_squared_diff = 0.0;

    for (int i = 0; i < count; i++) {
        double diff = numbers[i] - mean;
        sum_squared_diff += pow(diff, 2);
    }

    return sum_squared_diff / count;
}

int main() {
    int count;
    printf("Enter the total number of values: ");
    scanf("%d", &count);

    double numbers[count];
    printf("Enter the values:\n");
    for (int i = 0; i < count; i++) {
        printf("Value %d: ", i + 1);
        scanf("%lf", &numbers[i]);
    }

    double variance = calculate_variance(numbers, count);
    printf("The variance is: %.2lf\n", variance);

    return 0;
}


""";







  static const String code_op_1 = """
The length of the string "Hello, World!" is 13.

""";

  static const String code_op_2 = """
Source string: Hello, World!
Copied string: Hello, World!


""";

  static const String code_op_3 = """
Concatenated string: Hello, World!


""";

  static const String code_op_4 = """
String 1 is less than String 2

""";

  static const String code_op_5 = """
Original string: Hello, World!
Reversed string: !dlroW ,olleH


""";


  static const String code_op_6 = """
  
racecar is a palindrome.
hello is not a palindrome.

""";

  static const String code_op_7 = """
  
"Hello, World!" contains "Hello": true
"Hello, World!" contains "lo, Wo": true
"Hello, World!" contains "abc": false


""";

  static const String code_op_8 = """
Hello
World
How
are
you


""";

  static const String code_op_9 = """
Original string: Hello, World!
Uppercase string: HELLO, WORLD!
Lowercase string: hello, world!


""";

  static const String code_op_10 = """
Integer: 42
Float: 3.14
String: Hello, World!


""";


  // done

  static const String code_op_11 = """
The character 'l' occurs 3 times in the string.


""";

  static const String code_op_12 = """

Original string: Hello,   World!
String without whitespace: Hello,World!


""";

  static const String code_op_13 = """
Substring: World


""";

  static const String code_op_14 = """
Before sorting:
banana
apple
orange
grape
cherry

After sorting:
apple
banana
cherry
grape
orange

""";

  static const String code_op_15 = """
'listen' and 'silent' are anagrams.



""";

  // done

  static const String code_op_16 = """
Original string: Hello, World!
String after removing duplicates: Helo, Wrd!


""";

  static const String code_op_17 = """
Original string: Hello, World!
Encrypted string: Khoor, Zruog!
Decrypted string: Hello, World!


""";

  static const String code_op_18 = """
String: 12345
Integer: 12345

""";

  static const String code_op_19 = """
Integer: 12345
String: 12345

""";

  static const String code_op_20 = """
String: Hello, World!
Number of vowels: 3
Number of consonants: 7


""";

  static const String code_op_21 = """
Enter details of the first polynomial:
Enter the number of terms in the polynomial: 3
Enter the coefficient and exponent for each term:
Term 1:
Coefficient: 2
Exponent: 3
Term 2:
Coefficient: -4
Exponent: 2
Term 3:
Coefficient: 6
Exponent: 1

Enter details of the second polynomial:
Enter the number of terms in the polynomial: 4
Enter the coefficient and exponent for each term:
Term 1:
Coefficient: 3
Exponent: 4
Term 2:
Coefficient: -2
Exponent: 3
Term 3:
Coefficient: 5
Exponent: 2
Term 4:
Coefficient: -1
Exponent: 0

Polynomial 1: 2x^3 - 4x^2 + 6x^1
Polynomial 2: 3x^4 - 2x^3 + 5x^2 - 1x^0
Sum of polynomials: 3x^4 + 0x^3 + 1x^2 + 6x^1 - 1x^0

""";

  static const String code_op_22 = """
Polynomial 1: 2x^3 - 4x^2 + 6x^1
Polynomial 2: 3x^4 - 2x^3 + 5x^2 - 1x^0
Difference of polynomials: -3x^4 + 6x^3 - 11x^2 + 6x^1 + 1x^0


""";

  static const String code_op_23 = """
Polynomial 1: 2x^3 - 4x^2 + 6x^1
Polynomial 2: 3x^4 - 2x^3 + 5x^2 - 1x^0
Product of polynomials: 6x^7 - 4x^6 + 15x^5 - 3x^4 - 12x^3 + 8x^2 - 5x^1 + 1x^0

""";

  static const String code_op_24 = """
Dividend: 6x^5 - 9x^3 + 3x^2 + 12x^1 + 2x^0
Divisor: 2x^3 + 1x^1
Quotient: 3x^2 - 6x^1 + 6x^0
Remainder: 0x^0

""";

  static const String code_op_25 = """
Polynomial: 3x^2 - 4x^1 + 2x^0
x = 2
Result: 10

""";

  static const String code_op_26 = """
Original Polynomial: 3x^2 - 4x^1 + 2x^0
Differentiated Polynomial: 6x^1 - 4x^0


""";

  static const String code_op_27 = """
Original Polynomial: 3.00x^2 - 4.00x^1 + 2.00x^0
Integrated Polynomial: 1.00x^3 - 2.00x^2 + 2.00x^1

""";

  static const String code_op_28 = """
Polynomial Degree: 2


""";

  static const String code_op_29 = """
Polynomial Coefficients: 3.00 -4.00 2.00

""";

  static const String code_op_30 = """
Roots of the polynomial:
Root 1: 2.00 + 0.00i
Root 2: 1.00 + 0.00i

""";

  static const String code_op_31 = """
Enter coefficients (a, b, c) of the quadratic equation: 1 -3 2
Roots are real and different.
Root 1: 2.00
Root 2: 1.00

""";

  static const String code_op_32 = """
Enter coefficients (a, b) of the linear equation: 2 4
The solution to the equation is x = -2.00

""";

  static const String code_op_33 = """
Enter two numbers: 24 36
The GCD of 24 and 36 is 12

""";

  static const String code_op_34 = """
Enter two numbers: 35 15
GCD: 5
Bézout's Coefficients: x = 1, y = -2

""";

  static const String code_op_35 = """
Enter the limit: 30
Prime numbers up to 30:
2 3 5 7 11 13 17 19 23 29

""";

  static const String code_op_36 = """
Enter the number of rows: 6
      1 
     1 1 
    1 2 1 
   1 3 3 1 
  1 4 6 4 1 
 1 5 10 10 5 1 

""";

  static const String code_op_37 = """
Enter the values of n and k (n choose k): 5 2
5 choose 2 = 10

""";

  static const String code_op_38 = """
Expression: 5 3 + 6 *
Result: 48

""";

  static const String code_op_39 = """
Infix Expression: a+b*c-(d/e+f)*g
Postfix Expression: abc*+de/f+g*-

""";

  static const String code_op_40 = """
Postfix Expression: 523*+4-
Evaluation Result: 14

""";

  // done

  static const String code_op_41 = """
Input Expression: 2x^3 + 4x^2 - 6x + 8
Simplified Expression: 2x^3 + 4x^2 - 6x + 8

""";

  static const String code_op_42 = """
Expression: 2 * (3 + 4) - 5 / 2
Tokens: [2, N] [* , D] [(, D] [3, N] [+ , D] [4, N] [), D] [- , D] [5, N] [/ , D] [2, N]

""";

  static const String code_op_43 = """
Inorder Traversal: A + B * C - D
Postorder Traversal: A B + C D * -

""";

  static const String code_op_44 = """
Result: 18

""";

  static const String code_op_45 = """
Enter an expression: x**2 + 3*x + 2
Enter the variable: x
Differentiated expression: 2*x + 3

""";

  static const String code_op_46 = """
Enter the postfix expression: 53+
Enter the variable: x
Integrated expression:
∫5+x dx = 0.5*(5+x)^2

""";

  static const String code_op_47 = """
Enter the expression: 2*x + x^2
Enter the variable to substitute: x
Enter the substitution: a
Substituted expression: 2*a + a^2

""";

  static const String code_op_48 = """
Enter the expression: (a+b)*c-d/e
Simplified expression: ab+c*de/-

""";

  static const String code_op_49 = """
Enter the complex expression: (3 + 2i) * (4 - 5i) + 2 * (1 + i)
Result: 4.00 - 13.00i

""";

  static const String code_op_50 = """
Simplified expression: 6.00 - 3.00i

""";

  static const String code_op_51 = """
Sum of the complex expressions: 8.00 + 4.00i

""";

  static const String code_op_52 = """
Difference of the complex expressions: 2.00 + 2.00i

""";

  static const String code_op_53 = """
Enter the coefficients (a, b, c) of the quadratic equation: 2 5 2
Roots are real and distinct: -0.50, -2.00


""";

  static const String code_op_54 = """
Enter the coefficients (a, b, c) of the quadratic equation: 2 4 5
Roots are complex and imaginary: -1.00 + 1.00i, -1.00 - 1.00i

""";

  static const String code_op_55 = """
Enter the coefficients (a, b, c) of the quadratic equation: 2 4 5
Discriminant: -24.00

""";

  static const String code_op_56 = """
Enter the coefficients (a, b, c) of the quadratic equation: 2 -4 3
Vertex: (1.00, 1.00)

""";

  static const String code_op_57 = """
Enter the coefficients (a, b) of the quadratic equation: 2 -4
Axis of Symmetry: 1.00

""";

  static const String code_op_58 = """
Enter the coefficients (a, b, c) of the quadratic equation: 1 -3 2
Root 1: 2.00
Root 2: 1.00
                     
            *        
        *           
    *               
*                   


""";

  static const String code_op_59 = """
Enter an angle in degrees: 45
Angle: 45.00 degrees
Sine: 0.7071
Cosine: 0.7071
Tangent: 1.0000

""";

  static const String code_op_60 = """
Enter a value: 0.5
Value: 0.5000
Inverse Sine: 30.0000 degrees
Inverse Cosine: 60.0000 degrees
Inverse Tangent: 26.5651 degrees

""";

  static const String code_op_61 = """
Enter a value: 0.5
Value: 0.5000
Inverse Sine: 0.5236 radians
Inverse Cosine: 1.0472 radians
Inverse Tangent: 0.4636 radians
Inverse Sine: 30.0000 degrees
Inverse Cosine: 60.0000 degrees
Inverse Tangent: 26.5651 degrees

""";

  static const String code_op_62 = """
                    *
                  *
                *
              *
            *
          *
        *
      *
    *
  *
*
""";

  static const String code_op_63 = """
Enter the base of the triangle: 5
Enter the height of the triangle: 8
The area of the triangle is: 20.00

""";

  static const String code_op_64 = """
Enter the length of side 1: 3
Enter the length of side 2: 4
Enter the length of side 3: 5
The perimeter of the triangle is: 12.00

""";

  static const String code_op_65 = """
Enter the length of side 1: 5
Enter the length of side 2: 5
Enter the length of side 3: 5
The triangle is Equilateral.

""";

  static const String code_op_66 = """
Enter the length of side A: 4
Enter the length of side B: 5
Enter the length of side C: 6
Angle A: 36.87 degrees
Angle B: 53.13 degrees
Angle C: 90.00 degrees

""";

  static const String code_op_67 = """
Enter the radius of the circle: 5.0
The area of the circle is: 78.54

""";

  static const String code_op_68 = """
Enter the radius of the circle: 7.5
The circumference of the circle is: 47.12


""";

  static const String code_op_69 = """
Enter the radius of the circle: 7.5
The diameter of the circle is: 15.00


""";

  static const String code_op_70 = """
Enter the radius of the circle: 5.0
Enter the angle in degrees: 60.0
The area of the circle sector is: 5.24
The area of the circle segment is: 2.82

""";

  static const String code_op_71 = """
Enter the length of the rectangle: 7.5
Enter the width of the rectangle: 4.2
The area of the rectangle is: 31.50


""";

  static const String code_op_72 = """
Enter the length of the rectangle: 5.5
Enter the width of the rectangle: 3.2
The perimeter of the rectangle is: 17.40

""";

  static const String code_op_73 = """
Enter the side length of the square: 5.4
The area of the square is: 29.16


""";

  static const String code_op_74 = """
Enter the side length of the square: 7.8
The perimeter of the square is: 31.20


""";

  static const String code_op_75 = """
Enter the base of the parallelogram: 8.5
Enter the height of the parallelogram: 4.2
The area of the parallelogram is: 35.70

""";

  static const String code_op_76 = """
Enter the length of side 1 of the parallelogram: 7.2
Enter the length of side 2 of the parallelogram: 5.3
The perimeter of the parallelogram is: 24.00


""";

  static const String code_op_77 = """
Enter the length of diagonal 1 of the rhombus: 6.9
Enter the length of diagonal 2 of the rhombus: 4.8
The area of the rhombus is: 16.56

""";

  static const String code_op_78 = """
Enter the length of a side of the rhombus: 5.2
The perimeter of the rhombus is: 20.80

""";

  static const String code_op_79 = """
Enter the length of base 1 of the trapezoid: 6.5
Enter the length of base 2 of the trapezoid: 8.3
Enter the height of the trapezoid: 4.7
The area of the trapezoid is: 32.33

""";

  static const String code_op_80 = """
Enter the length of base 1 of the trapezoid: 5.2
Enter the length of base 2 of the trapezoid: 7.6
Enter the length of side 1 of the trapezoid: 3.1
Enter the length of side 2 of the trapezoid: 4.3
The perimeter of the trapezoid is: 20.20

""";

  static const String code_op_81 = """
Enter the radius of the cone: 3.5
Enter the height of the cone: 7.2
The volume of the cone is: 110.46

""";

  static const String code_op_82 = """
Enter the radius of the cone: 4.2
Enter the height of the cone: 9.5
The surface area of the cone is: 175.84

""";

  static const String code_op_83 = """
Enter the radius of the cylinder: 2.5
Enter the height of the cylinder: 6.8
The volume of the cylinder is: 133.07

""";

  static const String code_op_84 = """
Enter the radius of the cylinder: 2.5
Enter the height of the cylinder: 6.8
The surface area of the cylinder is: 161.99


""";

  static const String code_op_85 = """
Enter the radius of the sphere: 4.7
The volume of the sphere is: 437.59


""";

  static const String code_op_86 = """
Enter the radius of the sphere: 4.7
The surface area of the sphere is: 277.47


""";

  static const String code_op_87 = """
Enter the base length of the pyramid: 6.5
Enter the base width of the pyramid: 4.3
Enter the height of the pyramid: 9.2
The volume of the pyramid is: 105.04

""";

  static const String code_op_88 = """
Enter the base length of the pyramid: 6.5
Enter the base width of the pyramid: 4.3
Enter the height of the pyramid: 9.2
The surface area of the pyramid is: 138.62


""";

  static const String code_op_89 = """
Enter the base area of the prism: 12.6
Enter the height of the prism: 9.2
The volume of the prism is: 115.92


""";

  static const String code_op_90 = """
Enter the base perimeter of the prism: 18.4
Enter the base area of the prism: 24.5
Enter the lateral area of the prism: 55.6
The surface area of the prism is: 104.60

""";

  static const String code_op_91 = """
Enter the length of the cuboid: 5.6
Enter the width of the cuboid: 3.2
Enter the height of the cuboid: 4.9
The volume of the cuboid is: 88.32


""";

  static const String code_op_92 = """
Enter the length of the cuboid: 5.6
Enter the width of the cuboid: 3.2
Enter the height of the cuboid: 4.9
The surface area of the cuboid is: 136.00

""";

  static const String code_op_93 = """
Enter the number of sides of the regular polygon: 6
Enter the length of each side of the regular polygon: 4.5
The area of the regular polygon is: 46.12


""";

  static const String code_op_94 = """
Enter the number of sides of the regular polygon: 5
Enter the length of each side of the regular polygon: 3.8
The perimeter of the regular polygon is: 19.00


""";

  static const String code_op_95 = """
Enter the components of vector A:
Ax: 2.5
Ay: 3.8
Az: -1.2
Enter the components of vector B:
Bx: -1.7
By: 4.2
Bz: 0.9
The resulting vector C is (0.80, 8.00, -0.30)


""";

  static const String code_op_96 = """
Enter the components of vector A:
Ax: 2.5
Ay: 3.8
Az: -1.2
Enter the components of vector B:
Bx: -1.7
By: 4.2
Bz: 0.9
The resulting vector C is (4.20, -0.40, -2.10)


""";

  static const String code_op_97 = """
Enter the components of the vector:
Ax: 2.5
Ay: 3.8
Az: -1.2
Enter the scalar value: 2.7
The resulting vector B is (6.75, 10.26, -3.24)

""";

  static const String code_op_98 = """
Enter the components of vector A:
Ax: 2.5
Ay: 3.8
Az: -1.2
Enter the components of vector B:
Bx: -1.7
By: 4.2
Bz: 0.9
The dot product of A and B is -10.43

""";

  static const String code_op_99 = """
Enter the components of vector A:
Ax: 2.5
Ay: 3.8
Az: -1.2
Enter the components of vector B:
Bx: -1.7
By: 4.2
Bz: 0.9
The cross product of A and B is (-13.26, -2.97, 17.39)

""";

  static const String code_op_100 = """
Enter the components of the vector:
x: 3.5
y: -2.7
z: 1.9
The magnitude of the vector is 4.35

""";

  static const String code_op_101 = """
Enter the components of the vector:
x: 2.5
y: -1.3
z: 0.7
The direction of the vector is (0.81, -0.42, 0.23)


""";

  static const String code_op_102 = """
Enter the total number of values: 5
Enter the values:
Value 1: 2.5
Value 2: 3.8
Value 3: 1.7
Value 4: 4.2
Value 5: 2.9
The arithmetic mean is: 3.02

""";

  static const String code_op_103 = """
Enter the total number of values: 4
Enter the values:
Value 1: 2.0
Value 2: 3.0
Value 3: 4.0
Value 4: 5.0
The geometric mean is: 3.18

""";

  static const String code_op_104 = """
Enter the total number of values: 5
Enter the values:
Value 1: 2.0
Value 2: 4.0
Value 3: 6.0
Value 4: 8.0
Value 5: 10.0
The harmonic mean is: 4.21

""";

  static const String code_op_105 = """
Enter the total number of values: 6
Enter the values:
Value 1: 4.5
Value 2: 2.3
Value 3: 6.7
Value 4: 8.1
Value 5: 5.9
Value 6: 3.2
The standard deviation is: 2.05

""";

  static const String code_op_106 = """
Enter the total number of values: 5
Enter the values:
Value 1: 2.0
Value 2: 4.0
Value 3: 6.0
Value 4: 8.0
Value 5: 10.0
The variance is: 8.00

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

  static final syntaxViews_67 = {
    "Standard": SyntaxView(
      code:  code_67,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_68 = {
    "Standard": SyntaxView(
      code:  code_68,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_69 = {
    "Standard": SyntaxView(
      code:  code_69,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_70 = {
    "Standard": SyntaxView(
      code:  code_70,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_71 = {
    "Standard": SyntaxView(
      code:  code_71,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_72 = {
    "Standard": SyntaxView(
      code:  code_72,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_73 = {
    "Standard": SyntaxView(
      code:  code_73,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_74 = {
    "Standard": SyntaxView(
      code:  code_74,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_75 = {
    "Standard": SyntaxView(
      code:  code_75,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_76 = {
    "Standard": SyntaxView(
      code:  code_76,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_77 = {
    "Standard": SyntaxView(
      code:  code_77,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_78 = {
    "Standard": SyntaxView(
      code:  code_78,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_79 = {
    "Standard": SyntaxView(
      code:  code_79,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_80 = {
    "Standard": SyntaxView(
      code:  code_80,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_81 = {
    "Standard": SyntaxView(
      code:  code_81,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_82 = {
    "Standard": SyntaxView(
      code:  code_82,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_83 = {
    "Standard": SyntaxView(
      code:  code_83,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_84 = {
    "Standard": SyntaxView(
      code:  code_84,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_85 = {
    "Standard": SyntaxView(
      code:  code_85,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_86 = {
    "Standard": SyntaxView(
      code:  code_86,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_87 = {
    "Standard": SyntaxView(
      code:  code_87,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_88 = {
    "Standard": SyntaxView(
      code:  code_88,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_89 = {
    "Standard": SyntaxView(
      code:  code_89,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_90 = {
    "Standard": SyntaxView(
      code:  code_90,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_91 = {
    "Standard": SyntaxView(
      code:  code_91,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_92 = {
    "Standard": SyntaxView(
      code:  code_92,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_93 = {
    "Standard": SyntaxView(
      code:  code_93,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_94 = {
    "Standard": SyntaxView(
      code:  code_94,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_95 = {
    "Standard": SyntaxView(
      code:  code_95,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_96 = {
    "Standard": SyntaxView(
      code:  code_96,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_97 = {
    "Standard": SyntaxView(
      code:  code_97,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_98 = {
    "Standard": SyntaxView(
      code:  code_98,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_99 = {
    "Standard": SyntaxView(
      code:  code_99,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_100 = {
    "Standard": SyntaxView(
      code:  code_100,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_101 = {
    "Standard": SyntaxView(
      code:  code_101,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_102 = {
    "Standard": SyntaxView(
      code:  code_102,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_103 = {
    "Standard": SyntaxView(
      code:  code_103,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_104 = {
    "Standard": SyntaxView(
      code:  code_104,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_105 = {
    "Standard": SyntaxView(
      code:  code_105,
      syntax: Syntax.C,
      syntaxTheme: SyntaxTheme.gravityLight(),
      fontSize: 14.0,
      withZoom: true,
      withLinesCount: false,
      expanded: true,
    ),

  };

  static final syntaxViews_106 = {
    "Standard": SyntaxView(
      code:  code_106,
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

    else if(listIndex == 66)
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
                  itemCount: syntaxViews_67.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_67 = syntaxViews_67.values.elementAt(index);
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
                          if (syntaxView_67.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_67)
                          else
                            syntaxView_67,
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
                                      child: Text(code_op_67,
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
                      code_67);
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

                  _share(code_67); // Share the additional information

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

    else if(listIndex == 67)
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
                  itemCount: syntaxViews_68.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_68 = syntaxViews_68.values.elementAt(index);
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
                          if (syntaxView_68.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_68)
                          else
                            syntaxView_68,
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
                                      child: Text(code_op_68,
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
                      code_68);
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

                  _share(code_68); // Share the additional information

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

    else if(listIndex == 68)
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
                  itemCount: syntaxViews_69.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_69 = syntaxViews_69.values.elementAt(index);
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
                          if (syntaxView_69.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_69)
                          else
                            syntaxView_69,
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
                                      child: Text(code_op_69,
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
                      code_69);
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

                  _share(code_69); // Share the additional information

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

    else if(listIndex == 69)
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
                  itemCount: syntaxViews_70.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_70 = syntaxViews_70.values.elementAt(index);
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
                          if (syntaxView_70.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_70)
                          else
                            syntaxView_70,
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
                                      child: Text(code_op_70,
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
                      code_70);
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

                  _share(code_70); // Share the additional information

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

    else if(listIndex == 70)
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
                  itemCount: syntaxViews_71.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_71 = syntaxViews_71.values.elementAt(index);
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
                          if (syntaxView_71.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_71)
                          else
                            syntaxView_71,
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
                                      child: Text(code_op_71,
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
                      code_71);
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

                  _share(code_71); // Share the additional information

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

    else if(listIndex == 71)
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
                  itemCount: syntaxViews_72.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_72 = syntaxViews_72.values.elementAt(index);
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
                          if (syntaxView_72.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_72)
                          else
                            syntaxView_72,
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
                                      child: Text(code_op_72,
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
                      code_72);
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

                  _share(code_72); // Share the additional information

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

    else if(listIndex == 72)
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
                  itemCount: syntaxViews_73.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_73 = syntaxViews_73.values.elementAt(index);
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
                          if (syntaxView_73.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_73)
                          else
                            syntaxView_73,
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
                                      child: Text(code_op_73,
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
                      code_73);
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

                  _share(code_73); // Share the additional information

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

    else if(listIndex == 73)
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
                  itemCount: syntaxViews_74.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_74 = syntaxViews_74.values.elementAt(index);
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
                          if (syntaxView_74.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_74)
                          else
                            syntaxView_74,
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
                                      child: Text(code_op_74,
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
                      code_74);
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

                  _share(code_74); // Share the additional information

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

    else if(listIndex == 74)
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
                  itemCount: syntaxViews_75.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_75 = syntaxViews_75.values.elementAt(index);
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
                          if (syntaxView_75.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_75)
                          else
                            syntaxView_75,
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
                                      child: Text(code_op_75,
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
                      code_75);
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

                  _share(code_75); // Share the additional information

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

    else if(listIndex == 75)
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
                  itemCount: syntaxViews_76.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_76= syntaxViews_76.values.elementAt(index);
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
                          if (syntaxView_76.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_76)
                          else
                            syntaxView_76,
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
                                      child: Text(code_op_76,
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
                      code_76);
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

                  _share(code_76); // Share the additional information

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

    else if(listIndex == 76)
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
                  itemCount: syntaxViews_77.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_77 = syntaxViews_77.values.elementAt(index);
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
                          if (syntaxView_77.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_77)
                          else
                            syntaxView_77,
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
                                      child: Text(code_op_77,
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
                      code_77);
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

                  _share(code_77); // Share the additional information

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

    else if(listIndex == 77)
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
                  itemCount: syntaxViews_78.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_78 = syntaxViews_78.values.elementAt(index);
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
                          if (syntaxView_78.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_78)
                          else
                            syntaxView_78,
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
                                      child: Text(code_op_78,
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
                      code_78);
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

                  _share(code_78); // Share the additional information

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

    else if(listIndex == 78)
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
                  itemCount: syntaxViews_79.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_79 = syntaxViews_79.values.elementAt(index);
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
                          if (syntaxView_79.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_79)
                          else
                            syntaxView_79,
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
                                      child: Text(code_op_79,
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
                      code_79);
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

                  _share(code_79); // Share the additional information

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

    else if(listIndex == 79)
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
                  itemCount: syntaxViews_80.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_80 = syntaxViews_80.values.elementAt(index);
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
                          if (syntaxView_80.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_80)
                          else
                            syntaxView_80,
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
                                      child: Text(code_op_80,
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
                      code_80);
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

                  _share(code_80); // Share the additional information

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

    else if(listIndex == 80)
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
                  itemCount: syntaxViews_81.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_81 = syntaxViews_81.values.elementAt(index);
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
                          if (syntaxView_81.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_81)
                          else
                            syntaxView_81,
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
                                      child: Text(code_op_81,
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
                      code_81);
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

                  _share(code_81); // Share the additional information

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

    else if(listIndex == 81)
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
                  itemCount: syntaxViews_82.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_82 = syntaxViews_82.values.elementAt(index);
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
                          if (syntaxView_82.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_82)
                          else
                            syntaxView_82,
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
                                      child: Text(code_op_82,
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
                      code_82);
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

                  _share(code_82); // Share the additional information

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


    else if(listIndex == 82)
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
                  itemCount: syntaxViews_83.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_83 = syntaxViews_83.values.elementAt(index);
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
                          if (syntaxView_83.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_83)
                          else
                            syntaxView_83,
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
                                      child: Text(code_op_83,
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
                      code_83);
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

                  _share(code_83); // Share the additional information

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


    else if(listIndex == 83)
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
                  itemCount: syntaxViews_84.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_84 = syntaxViews_84.values.elementAt(index);
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
                          if (syntaxView_84.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_84)
                          else
                            syntaxView_84,
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
                                      child: Text(code_op_84,
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
                      code_84);
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

                  _share(code_84); // Share the additional information

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

    else if(listIndex == 84)
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
                  itemCount: syntaxViews_85.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_85 = syntaxViews_85.values.elementAt(index);
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
                          if (syntaxView_85.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_85)
                          else
                            syntaxView_85,
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
                                      child: Text(code_op_85,
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
                      code_85);
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

                  _share(code_85); // Share the additional information

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

    else if(listIndex == 85)
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
                  itemCount: syntaxViews_86.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_86 = syntaxViews_86.values.elementAt(index);
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
                          if (syntaxView_86.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_86)
                          else
                            syntaxView_86,
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
                                      child: Text(code_op_86,
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
                      code_86);
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

                  _share(code_86); // Share the additional information

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

    else if(listIndex == 86)
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
                  itemCount: syntaxViews_87.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_87 = syntaxViews_87.values.elementAt(index);
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
                          if (syntaxView_87.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_87)
                          else
                            syntaxView_87,
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
                                      child: Text(code_op_87,
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
                      code_87);
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

                  _share(code_87); // Share the additional information

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

    else if(listIndex == 87)
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
                  itemCount: syntaxViews_88.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_88 = syntaxViews_88.values.elementAt(index);
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
                          if (syntaxView_88.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_88)
                          else
                            syntaxView_88,
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
                                      child: Text(code_op_88,
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
                      code_88);
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

                  _share(code_88); // Share the additional information

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

    else if(listIndex == 88)
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
                  itemCount: syntaxViews_89.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_89 = syntaxViews_89.values.elementAt(index);
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
                          if (syntaxView_89.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_89)
                          else
                            syntaxView_89,
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
                                      child: Text(code_op_89,
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
                      code_89);
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

                  _share(code_89); // Share the additional information

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

    else if(listIndex == 89)
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
                  itemCount: syntaxViews_90.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_90 = syntaxViews_90.values.elementAt(index);
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
                          if (syntaxView_90.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_90)
                          else
                            syntaxView_90,
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
                                      child: Text(code_op_90,
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
                      code_90);
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

                  _share(code_90); // Share the additional information

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

    else if(listIndex == 90)
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
                  itemCount: syntaxViews_91.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_91 = syntaxViews_91.values.elementAt(index);
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
                          if (syntaxView_91.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_91)
                          else
                            syntaxView_91,
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
                                      child: Text(code_op_91,
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
                      code_91);
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

                  _share(code_91); // Share the additional information

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

    else if(listIndex == 91)
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
                  itemCount: syntaxViews_92.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_92 = syntaxViews_92.values.elementAt(index);
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
                          if (syntaxView_92.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_92)
                          else
                            syntaxView_92,
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
                                      child: Text(code_op_92,
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
                      code_92);
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

                  _share(code_92); // Share the additional information

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


    else if(listIndex == 92)
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
                  itemCount: syntaxViews_93.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_93 = syntaxViews_93.values.elementAt(index);
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
                          if (syntaxView_93.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_93)
                          else
                            syntaxView_93,
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
                                      child: Text(code_op_93,
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
                      code_93);
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

                  _share(code_93); // Share the additional information

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


    else if(listIndex == 93)
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
                  itemCount: syntaxViews_94.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_94 = syntaxViews_94.values.elementAt(index);
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
                          if (syntaxView_94.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_94)
                          else
                            syntaxView_94,
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
                                      child: Text(code_op_94,
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
                      code_94);
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

                  _share(code_94); // Share the additional information

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

    else if(listIndex == 94)
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
                  itemCount: syntaxViews_95.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_95 = syntaxViews_95.values.elementAt(index);
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
                          if (syntaxView_95.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_95)
                          else
                            syntaxView_95,
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
                                      child: Text(code_op_95,
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
                      code_95);
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

                  _share(code_95); // Share the additional information

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

    else if(listIndex == 95)
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
                  itemCount: syntaxViews_96.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_96 = syntaxViews_96.values.elementAt(index);
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
                          if (syntaxView_96.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_96)
                          else
                            syntaxView_96,
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
                                      child: Text(code_op_96,
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
                      code_96);
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

                  _share(code_96); // Share the additional information

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

    else if(listIndex == 96)
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
                  itemCount: syntaxViews_97.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_97 = syntaxViews_97.values.elementAt(index);
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
                          if (syntaxView_97.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_97)
                          else
                            syntaxView_97,
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
                                      child: Text(code_op_97,
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
                      code_97);
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

                  _share(code_97); // Share the additional information

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

    else if(listIndex == 97)
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
                  itemCount: syntaxViews_98.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_98 = syntaxViews_98.values.elementAt(index);
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
                          if (syntaxView_98.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_98)
                          else
                            syntaxView_98,
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
                                      child: Text(code_op_98,
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
                      code_98);
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

                  _share(code_98); // Share the additional information

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

    else if(listIndex == 98)
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
                  itemCount: syntaxViews_99.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_99 = syntaxViews_99.values.elementAt(index);
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
                          if (syntaxView_99.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_99)
                          else
                            syntaxView_99,
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
                                      child: Text(code_op_99,
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
                      code_99);
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

                  _share(code_99); // Share the additional information

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

    else if(listIndex == 99)
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
                  itemCount: syntaxViews_100.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_100 = syntaxViews_100.values.elementAt(index);
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
                          if (syntaxView_100.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_100)
                          else
                            syntaxView_100,
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
                                      child: Text(code_op_100,
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
                      code_100);
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

                  _share(code_100); // Share the additional information

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

    else if(listIndex == 100)
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
                  itemCount: syntaxViews_101.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_101 = syntaxViews_101.values.elementAt(index);
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
                          if (syntaxView_101.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_101)
                          else
                            syntaxView_101,
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
                                      child: Text(code_op_101,
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
                      code_101);
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

                  _share(code_101); // Share the additional information

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

    else if(listIndex == 101)
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
                  itemCount: syntaxViews_102.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_102 = syntaxViews_102.values.elementAt(index);
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
                          if (syntaxView_102.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_102)
                          else
                            syntaxView_102,
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
                                      child: Text(code_op_102,
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
                      code_102);
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

                  _share(code_102); // Share the additional information

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

    else if(listIndex == 102)
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
                  itemCount: syntaxViews_103.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_103 = syntaxViews_103.values.elementAt(index);
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
                          if (syntaxView_103.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_103)
                          else
                            syntaxView_103,
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
                                      child: Text(code_op_103,
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
                      code_103);
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

                  _share(code_103); // Share the additional information

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

    else if(listIndex == 103)
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
                  itemCount: syntaxViews_104.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_104 = syntaxViews_104.values.elementAt(index);
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
                          if (syntaxView_104.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_104)
                          else
                            syntaxView_104,
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
                                      child: Text(code_op_104,
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
                      code_104);
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

                  _share(code_104); // Share the additional information

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

    else if(listIndex == 104)
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
                  itemCount: syntaxViews_105.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_105 = syntaxViews_105.values.elementAt(index);
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
                          if (syntaxView_105.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_105)
                          else
                            syntaxView_105,
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
                                      child: Text(code_op_105,
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
                      code_105);
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

                  _share(code_105); // Share the additional information

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

    else if(listIndex == 105)
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
                  itemCount: syntaxViews_106.length,
                  itemBuilder: (BuildContext context, int index) {
                    SyntaxView syntaxView_106 = syntaxViews_106.values.elementAt(index);
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
                          if (syntaxView_106.expanded)
                            Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: syntaxView_106)
                          else
                            syntaxView_106,
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
                                      child: Text(code_op_106,
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
                      code_106);
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

                  _share(code_106); // Share the additional information

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
