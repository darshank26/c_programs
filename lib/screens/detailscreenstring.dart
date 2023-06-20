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
#include <string.h>

void findLongestWord(const char* str, char* longestWord) {
    int length = 0;
    int maxLength = 0;
    const char* wordStart = str;

    while (*str) {
        if (*str == ' ' || *str == '\t' || *str == '\n') {
            int wordLength = str - wordStart;

            if (wordLength > maxLength) {
                maxLength = wordLength;
                strncpy(longestWord, wordStart, maxLength);
                longestWord[maxLength] = '\0';
            }

            wordStart = str + 1;
        }

        str++;
    }

    // Check for the last word at the end of the string
    int lastWordLength = str - wordStart;
    if (lastWordLength > maxLength) {
        maxLength = lastWordLength;
        strncpy(longestWord, wordStart, maxLength);
        longestWord[maxLength] = '\0';
    }
}

int main() {
    const char* str = "This is a sample string";
    char longestWord[100];

    findLongestWord(str, longestWord);

    printf("String: %s\n", str);
    printf("Longest word: %s\n", longestWord);

    return 0;
}

""";

  static const String code_22 = r"""
#include <stdio.h>
#include <string.h>

void replaceCharacters(char* str, char findChar, char replaceChar) {
    int length = strlen(str);

    for (int i = 0; i < length; i++) {
        if (str[i] == findChar) {
            str[i] = replaceChar;
        }
    }
}

int main() {
    char str[] = "Hello, World!";
    char findChar = 'o';
    char replaceChar = '*';

    printf("Original string: %s\n", str);

    replaceCharacters(str, findChar, replaceChar);

    printf("Modified string: %s\n", str);

    return 0;
}

""";

  static const String code_23 = r"""
#include <stdio.h>
#include <string.h>

void compressString(const char* str, char* compressedStr) {
    int length = strlen(str);
    int count;
    int index = 0;

    for (int i = 0; i < length; i++) {
        compressedStr[index++] = str[i];
        count = 1;

        while (i + 1 < length && str[i] == str[i + 1]) {
            count++;
            i++;
        }

        // Convert count to a string and append it to the compressed string
        char countStr[10];
        sprintf(countStr, "%d", count);
        int countLength = strlen(countStr);
        strncpy(compressedStr + index, countStr, countLength);
        index += countLength;
    }

    // Add null terminator to the compressed string
    compressedStr[index] = '\0';
}

int main() {
    const char* str = "AAABBBCCCDDDD";
    char compressedStr[100];

    printf("Original string: %s\n", str);

    compressString(str, compressedStr);

    printf("Compressed string: %s\n", compressedStr);

    return 0;
}

""";

  static const String code_24 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

void decompressString(const char* compressedStr, char* decompressedStr) {
    int length = strlen(compressedStr);
    int index = 0;

    for (int i = 0; i < length; i++) {
        if (isdigit(compressedStr[i])) {
            int count = atoi(&compressedStr[i]);

            // Repeat the previous character 'count' times
            for (int j = 0; j < count; j++) {
                decompressedStr[index++] = decompressedStr[index - 2];
            }

            // Skip past the count digits
            while (isdigit(compressedStr[i]))
                i++;
        } else {
            decompressedStr[index++] = compressedStr[i];
        }
    }

    // Add null terminator to the decompressed string
    decompressedStr[index] = '\0';
}

int main() {
    const char* compressedStr = "A3B3C3D4";
    char decompressedStr[100];

    printf("Compressed string: %s\n", compressedStr);

    decompressString(compressedStr, decompressedStr);

    printf("Decompressed string: %s\n", decompressedStr);

    return 0;
}

""";

  static const String code_25 = r"""
#include <stdio.h>
#include <string.h>

void computeLPSArray(const char* pattern, int patternLength, int* lps) {
    int len = 0;
    lps[0] = 0;
    int i = 1;

    while (i < patternLength) {
        if (pattern[i] == pattern[len]) {
            len++;
            lps[i] = len;
            i++;
        } else {
            if (len != 0) {
                len = lps[len - 1];
            } else {
                lps[i] = 0;
                i++;
            }
        }
    }
}

void KMPSearch(const char* pattern, const char* text) {
    int patternLength = strlen(pattern);
    int textLength = strlen(text);

    int lps[patternLength];
    computeLPSArray(pattern, patternLength, lps);

    int i = 0;  // index for text[]
    int j = 0;  // index for pattern[]

    while (i < textLength) {
        if (pattern[j] == text[i]) {
            j++;
            i++;
        }

        if (j == patternLength) {
            printf("Pattern found at index %d\n", i - j);
            j = lps[j - 1];
        } else if (i < textLength && pattern[j] != text[i]) {
            if (j != 0) {
                j = lps[j - 1];
            } else {
                i++;
            }
        }
    }
}

int main() {
    const char* text = "ABABDABACDABABCABAB";
    const char* pattern = "ABABCABAB";

    printf("Text: %s\n", text);
    printf("Pattern: %s\n", pattern);

    KMPSearch(pattern, text);

    return 0;
}


""";

  static const String code_26 = r"""
#include <stdio.h>
#include <string.h>

int isRotation(const char* str1, const char* str2) {
    int len1 = strlen(str1);
    int len2 = strlen(str2);

    // Check if the lengths of the strings are the same
    if (len1 != len2) {
        return 0;
    }

    // Concatenate str1 with itself
    char concatStr[2 * len1 + 1];
    strcpy(concatStr, str1);
    strcat(concatStr, str1);

    // Check if str2 is a substring of concatStr
    if (strstr(concatStr, str2) != NULL) {
        return 1;
    } else {
        return 0;
    }
}

int main() {
    const char* str1 = "rotation";
    const char* str2 = "tionrota";

    if (isRotation(str1, str2)) {
        printf("%s is a rotation of %s\n", str2, str1);
    } else {
        printf("%s is not a rotation of %s\n", str2, str1);
    }

    return 0;
}

""";

  static const String code_27 = r"""
#include <stdio.h>
#include <string.h>

void truncateString(char* str, int maxLength) {
    int length = strlen(str);

    if (length > maxLength) {
        str[maxLength] = '\0';
    }
}

int main() {
    char str[100] = "This is a long string that needs to be truncated";
    int maxLength = 20;

    printf("Original string: %s\n", str);

    truncateString(str, maxLength);

    printf("Truncated string: %s\n", str);

    return 0;
}

""";

  static const String code_28 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

// Function to URL encode a string
char* urlEncode(const char* str) {
    size_t length = strlen(str);
    char* encodedStr = malloc(3 * length + 1); // Maximum possible length after encoding

    if (encodedStr == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return NULL;
    }

    const char* hexDigits = "0123456789ABCDEF";
    int j = 0;

    for (size_t i = 0; i < length; i++) {
        unsigned char ch = str[i];

        if (isalnum(ch) || ch == '-' || ch == '_' || ch == '.' || ch == '~') {
            encodedStr[j++] = ch;
        } else if (ch == ' ') {
            encodedStr[j++] = '+';
        } else {
            encodedStr[j++] = '%';
            encodedStr[j++] = hexDigits[ch >> 4]; // High nibble
            encodedStr[j++] = hexDigits[ch & 0x0F]; // Low nibble
        }
    }

    encodedStr[j] = '\0';
    return encodedStr;
}

// Function to URL decode a string
char* urlDecode(const char* str) {
    size_t length = strlen(str);
    char* decodedStr = malloc(length + 1); // Maximum possible length after decoding

    if (decodedStr == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return NULL;
    }

    int j = 0;

    for (size_t i = 0; i < length; i++) {
        if (str[i] == '+') {
            decodedStr[j++] = ' ';
        } else if (str[i] == '%') {
            if (i + 2 < length) {
                char hex[3];
                hex[0] = str[i + 1];
                hex[1] = str[i + 2];
                hex[2] = '\0';
                decodedStr[j++] = strtol(hex, NULL, 16);
                i += 2;
            }
        } else {
            decodedStr[j++] = str[i];
        }
    }

    decodedStr[j] = '\0';
    return decodedStr;
}

int main() {
    const char* originalStr = "Hello World!";
    char* encodedStr = urlEncode(originalStr);

    printf("Original string: %s\n", originalStr);
    printf("Encoded string: %s\n", encodedStr);

    char* decodedStr = urlDecode(encodedStr);

    printf("Decoded string: %s\n", decodedStr);

    free(encodedStr);
    free(decodedStr);

    return 0;
}

""";

  static const String code_29 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static const char base64Chars[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

// Function to Base64 encode a string
char* base64Encode(const unsigned char* data, size_t inputLength) {
    size_t outputLength = 4 * ((inputLength + 2) / 3); // Calculate the output length
    char* encodedData = malloc(outputLength + 1); // Allocate memory for the encoded data

    if (encodedData == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return NULL;
    }

    size_t i, j;

    for (i = 0, j = 0; i < inputLength; i += 3, j += 4) {
        unsigned char byte1 = data[i];
        unsigned char byte2 = (i + 1 < inputLength) ? data[i + 1] : 0;
        unsigned char byte3 = (i + 2 < inputLength) ? data[i + 2] : 0;

        encodedData[j] = base64Chars[byte1 >> 2];
        encodedData[j + 1] = base64Chars[((byte1 & 0x03) << 4) | (byte2 >> 4)];
        encodedData[j + 2] = (i + 1 < inputLength) ? base64Chars[((byte2 & 0x0F) << 2) | (byte3 >> 6)] : '=';
        encodedData[j + 3] = (i + 2 < inputLength) ? base64Chars[byte3 & 0x3F] : '=';
    }

    encodedData[j] = '\0'; // Null-terminate the encoded data
    return encodedData;
}

// Function to Base64 decode a string
unsigned char* base64Decode(const char* encodedData, size_t* outputLength) {
    size_t inputLength = strlen(encodedData);
    *outputLength = (inputLength * 3) / 4; // Calculate the output length
    unsigned char* decodedData = malloc(*outputLength);

    if (decodedData == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return NULL;
    }

    size_t i, j;
    int padding = 0;

    for (i = 0, j = 0; i < inputLength; i += 4, j += 3) {
        unsigned char byte1 = strchr(base64Chars, encodedData[i]) - base64Chars;
        unsigned char byte2 = strchr(base64Chars, encodedData[i + 1]) - base64Chars;
        unsigned char byte3 = (encodedData[i + 2] == '=') ? 0 : strchr(base64Chars, encodedData[i + 2]) - base64Chars;
        unsigned char byte4 = (encodedData[i + 3] == '=') ? 0 : strchr(base64Chars, encodedData[i + 3]) - base64Chars;

        decodedData[j] = (byte1 << 2) | (byte2 >> 4);

        if (byte3 != 0xFF) {
            decodedData[j + 1] = (byte2 << 4) | (byte3 >> 2);
        }

        if (byte4 != 0xFF) {
            decodedData[j + 2] = (byte3 << 6) | byte4;
        } else {
            padding++;
        }
    }

    *outputLength -= padding; // Adjust the output length due to padding
    return decodedData;
}

int main() {
    const unsigned char* originalData = "Hello, World!";
    size_t inputLength = strlen((const char*)originalData);

    // Base64 encoding
    char* encodedData = base64Encode(originalData, inputLength);
    printf("Encoded data: %s\n", encodedData);

    // Base64 decoding
    size_t outputLength;
    unsigned char* decodedData = base64Decode(encodedData, &outputLength);
    printf("Decoded data: %s\n", decodedData);

    free(encodedData);
    free(decodedData);

    return 0;
}

""";

  static const String code_30 = r"""
#include <stdio.h>
#include <string.h>

// Function to convert a character to Morse code
const char* charToMorse(char c) {
    switch (c) {
        case 'A': case 'a': return ".-";
        case 'B': case 'b': return "-...";
        case 'C': case 'c': return "-.-.";
        case 'D': case 'd': return "-..";
        case 'E': case 'e': return ".";
        case 'F': case 'f': return "..-.";
        case 'G': case 'g': return "--.";
        case 'H': case 'h': return "....";
        case 'I': case 'i': return "..";
        case 'J': case 'j': return ".---";
        case 'K': case 'k': return "-.-";
        case 'L': case 'l': return ".-..";
        case 'M': case 'm': return "--";
        case 'N': case 'n': return "-.";
        case 'O': case 'o': return "---";
        case 'P': case 'p': return ".--.";
        case 'Q': case 'q': return "--.-";
        case 'R': case 'r': return ".-.";
        case 'S': case 's': return "...";
        case 'T': case 't': return "-";
        case 'U': case 'u': return "..-";
        case 'V': case 'v': return "...-";
        case 'W': case 'w': return ".--";
        case 'X': case 'x': return "-..-";
        case 'Y': case 'y': return "-.--";
        case 'Z': case 'z': return "--..";
        case '0': return "-----";
        case '1': return ".----";
        case '2': return "..---";
        case '3': return "...--";
        case '4': return "....-";
        case '5': return ".....";
        case '6': return "-....";
        case '7': return "--...";
        case '8': return "---..";
        case '9': return "----.";
        case ' ': return " ";
        default: return "";
    }
}

// Function to convert a string to Morse code
void stringToMorse(const char* str, char* morseCode) {
    size_t length = strlen(str);
    size_t i;

    for (i = 0; i < length; i++) {
        const char* morseChar = charToMorse(str[i]);
        strcat(morseCode, morseChar);
        strcat(morseCode, " ");
    }
}

int main() {
    const char* originalStr = "HELLO WORLD";
    char morseCode[100] = "";

    stringToMorse(originalStr, morseCode);

    printf("Original string: %s\n", originalStr);
    printf("Morse code: %s\n", morseCode);

    return 0;
}

""";

  static const String code_31 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Function to encrypt a string using the Caesar cipher
void encryptString(char* str, int key) {
    int i = 0;
    while (str[i] != '\0') {
        if (str[i] >= 'A' && str[i] <= 'Z') {
            str[i] = (str[i] - 'A' + key) % 26 + 'A';  // Shift uppercase letters
        } else if (str[i] >= 'a' && str[i] <= 'z') {
            str[i] = (str[i] - 'a' + key) % 26 + 'a';  // Shift lowercase letters
        }
        i++;
    }
}

int main() {
    char originalStr[100];
    int key;

    printf("Enter a string: ");
    fgets(originalStr, sizeof(originalStr), stdin);
    originalStr[strcspn(originalStr, "\n")] = '\0';  // Remove newline character

    printf("Enter the encryption key (0-25): ");
    scanf("%d", &key);

    encryptString(originalStr, key);

    printf("Encrypted string: %s\n", originalStr);

    return 0;
}

""";

  static const String code_32 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Function to decrypt a string using the Caesar cipher
void decryptString(char* str, int key) {
    int i = 0;
    while (str[i] != '\0') {
        if (str[i] >= 'A' && str[i] <= 'Z') {
            str[i] = (str[i] - 'A' - key + 26) % 26 + 'A';  // Reverse shift for uppercase letters
        } else if (str[i] >= 'a' && str[i] <= 'z') {
            str[i] = (str[i] - 'a' - key + 26) % 26 + 'a';  // Reverse shift for lowercase letters
        }
        i++;
    }
}

int main() {
    char encryptedStr[100];
    int key;

    printf("Enter the encrypted string: ");
    fgets(encryptedStr, sizeof(encryptedStr), stdin);
    encryptedStr[strcspn(encryptedStr, "\n")] = '\0';  // Remove newline character

    printf("Enter the decryption key (0-25): ");
    scanf("%d", &key);

    decryptString(encryptedStr, key);

    printf("Decrypted string: %s\n", encryptedStr);

    return 0;
}

""";


  static const String code_33 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Function to generate a random string of given length
char* generateRandomString(int length) {
    char* randomString = (char*)malloc((length + 1) * sizeof(char));

    // Set the seed for the random number generator
    srand(time(NULL));

    for (int i = 0; i < length; i++) {
        // Generate a random number between 0 and 25
        int randomNum = rand() % 26;

        // Convert the random number to a character
        randomString[i] = 'A' + randomNum;
    }

    randomString[length] = '\0'; // Null-terminate the string

    return randomString;
}

int main() {
    int length;

    printf("Enter the length of the random string: ");
    scanf("%d", &length);

    char* randomString = generateRandomString(length);

    printf("Random string: %s\n", randomString);

    free(randomString);

    return 0;
}

""";

  static const String code_34 = r"""
#include <stdio.h>

// Function to calculate the djb2 hash value for a string
unsigned long djb2Hash(const char* str) {
    unsigned long hash = 5381;
    int c;

    while ((c = *str++)) {
        hash = ((hash << 5) + hash) + c; // hash = hash * 33 + c
    }

    return hash;
}

int main() {
    const char* str = "Hello, World!";
    unsigned long hashValue = djb2Hash(str);

    printf("String: %s\n", str);
    printf("Hash value: %lu\n", hashValue);

    return 0;
}

""";

  static const String code_35 = r"""
#include <stdio.h>

// Function to convert a character to binary representation
void charToBinary(char c) {
    for (int i = 7; i >= 0; i--) {
        printf("%d", (c >> i) & 1);
    }
}

// Function to convert a string to binary representation
void stringToBinary(const char* str) {
    while (*str) {
        charToBinary(*str);
        str++;
        printf(" ");
    }
}

int main() {
    const char* str = "Hello, World!";
    
    printf("String: %s\n", str);
    printf("Binary representation: ");
    stringToBinary(str);
    printf("\n");

    return 0;
}

""";

  static const String code_36 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Function to convert a binary string to its corresponding character
char binaryToChar(const char* binary) {
    int decimal = strtol(binary, NULL, 2);
    return (char)decimal;
}

// Function to convert a binary representation to string
void binaryToString(const char* binary) {
    int length = strlen(binary);

    // Check if the length is a multiple of 8
    if (length % 8 != 0) {
        printf("Invalid binary representation\n");
        return;
    }

    char* str = (char*)malloc((length / 8 + 1) * sizeof(char));
    int index = 0;

    for (int i = 0; i < length; i += 8) {
        char byte[9];  // Store the current byte (8 bits) plus null-terminator
        strncpy(byte, binary + i, 8);
        byte[8] = '\0';

        str[index] = binaryToChar(byte);
        index++;
    }

    str[index] = '\0';

    printf("String: %s\n", str);

    free(str);
}

int main() {
    const char* binary = "01001000 01100101 01101100 01101100 01101111 00101100 00100000 01010111 01101111 01110010 01101100 01100100 00100001";
    
    printf("Binary representation: %s\n", binary);
    binaryToString(binary);

    return 0;
}

""";

  static const String code_37 = r"""
#include <stdio.h>
#include <string.h>

void splitString(const char* str, const char* delimiter) {
    char tempStr[strlen(str) + 1];
    strcpy(tempStr, str);

    char* token = strtok(tempStr, delimiter);
    while (token != NULL) {
        printf("%s\n", token);
        token = strtok(NULL, delimiter);
    }
}

int main() {
    char str[] = "Hello,World,How,Are,You";
    const char delimiter[] = ",";

    printf("String: %s\n", str);
    printf("Delimiter: %s\n", delimiter);
    printf("Substrings:\n");

    splitString(str, delimiter);

    return 0;
}


""";

  static const String code_38 = r"""
#include <stdio.h>
#include <string.h>

void reverseWords(char* sentence) {
    // Tokenize the sentence into words
    char* token = strtok(sentence, " ");
    char* words[100];  // Assuming maximum 100 words in the sentence
    int count = 0;

    while (token != NULL) {
        words[count] = token;
        count++;
        token = strtok(NULL, " ");
    }

    // Print the words in reverse order
    printf("Reversed sentence: ");
    for (int i = count - 1; i >= 0; i--) {
        printf("%s ", words[i]);
    }
    printf("\n");
}

int main() {
    char sentence[] = "Hello, how are you today?";

    printf("Original sentence: %s\n", sentence);
    reverseWords(sentence);

    return 0;
}


""";

  static const String code_39 = r"""
#include <stdio.h>
#include <string.h>

void compressString(const char* str) {
    int length = strlen(str);

    // Handle empty string case
    if (length == 0) {
        printf("Compressed string: %s\n", str);
        return;
    }

    char compressed[2 * length];  // Assuming maximum compression ratio of 2:1
    int compressedIndex = 0;

    int count = 1;
    for (int i = 1; i <= length; i++) {
        if (str[i] == str[i - 1]) {
            count++;
        }
        else {
            compressed[compressedIndex++] = str[i - 1];
            compressed[compressedIndex++] = '0' + count;
            count = 1;
        }
    }

    compressed[compressedIndex] = '\0';

    printf("Compressed string: %s\n", compressed);
}

int main() {
    const char* str = "AAABBBCCCCDDDD";

    printf("Original string: %s\n", str);
    compressString(str);

    return 0;
}


""";

  static const String code_40 = r"""
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

bool hasUniqueCharacters(const char* str) {
    int length = strlen(str);
    bool seen[256] = { false };  // Assuming ASCII character set

    for (int i = 0; i < length; i++) {
        int charValue = (int)str[i];

        if (seen[charValue]) {
            return false;
        }

        seen[charValue] = true;
    }

    return true;
}

int main() {
    const char* str1 = "abcdefg";
    const char* str2 = "hello";

    printf("String 1: %s\n", str1);
    if (hasUniqueCharacters(str1)) {
        printf("String 1 contains only unique characters\n");
    }
    else {
        printf("String 1 does not contain only unique characters\n");
    }

    printf("String 2: %s\n", str2);
    if (hasUniqueCharacters(str2)) {
        printf("String 2 contains only unique characters\n");
    }
    else {
        printf("String 2 does not contain only unique characters\n");
    }

    return 0;
}

""";


  // done

  static const String code_41 = r"""
#include <stdio.h>
#include <string.h>

// Function to check if one string is a rotation of another string
int isRotation(const char* str1, const char* str2) {
    int len1 = strlen(str1);
    int len2 = strlen(str2);
    
    // Check if lengths of both strings are equal
    if (len1 != len2) {
        return 0;
    }
    
    // Concatenate str1 with itself
    char temp[2 * len1 + 1];
    strcpy(temp, str1);
    strcat(temp, str1);
    
    // Check if str2 is a substring of temp
    if (strstr(temp, str2) != NULL) {
        return 1;
    }
    
    return 0;
}

int main() {
    char str1[100], str2[100];
    
    printf("Enter the first string: ");
    scanf("%s", str1);
    
    printf("Enter the second string: ");
    scanf("%s", str2);
    
    if (isRotation(str1, str2)) {
        printf("The second string is a rotation of the first string.\n");
    } else {
        printf("The second string is not a rotation of the first string.\n");
    }
    
    return 0;
}

""";

  static const String code_42 = r"""
#include <stdio.h>
#include <string.h>

#define ASCII_SIZE 128

// Function to find the most frequent character in a string
char findMostFrequentChar(const char* str) {
    int count[ASCII_SIZE] = {0};
    int maxCount = 0;
    char mostFrequentChar;

    // Calculate the frequency of each character
    for (int i = 0; str[i] != '\0'; i++) {
        count[str[i]]++;
    }

    // Find the character with the highest frequency
    for (int i = 0; i < ASCII_SIZE; i++) {
        if (count[i] > maxCount) {
            maxCount = count[i];
            mostFrequentChar = i;
        }
    }

    return mostFrequentChar;
}

int main() {
    char str[100];

    printf("Enter a string: ");
    scanf("%[^\n]", str);

    char mostFrequentChar = findMostFrequentChar(str);

    printf("The most frequent character in the string is '%c'.\n", mostFrequentChar);

    return 0;
}


""";

  static const String code_43 = r"""
#include <stdio.h>
#include <string.h>

#define MAX_LENGTH 100

int countWords(const char* sentence) {
    int wordCount = 0;
    int isWord = 0;

    // Traverse the sentence character by character
    for (int i = 0; sentence[i] != '\0'; i++) {
        // If a non-space character is encountered
        if (sentence[i] != ' ') {
            // If it is the start of a new word, increment the word count
            if (isWord == 0) {
                wordCount++;
                isWord = 1;
            }
        } else {
            // If a space character is encountered, mark the end of the current word
            isWord = 0;
        }
    }

    return wordCount;
}

int main() {
    char sentence[MAX_LENGTH];

    printf("Enter a sentence: ");
    fgets(sentence, MAX_LENGTH, stdin);

    // Remove the trailing newline character from fgets
    sentence[strcspn(sentence, "\n")] = '\0';

    int wordCount = countWords(sentence);

    printf("Number of words in the sentence: %d\n", wordCount);

    return 0;
}

""";

  static const String code_44 = r"""
#include <stdio.h>
#include <string.h>

void swap(char* a, char* b) {
    char temp = *a;
    *a = *b;
    *b = temp;
}

void generatePermutations(char* str, int start, int end) {
    if (start == end) {
        printf("%s\n", str);
        return;
    }

    for (int i = start; i <= end; i++) {
        swap(&str[start], &str[i]);
        generatePermutations(str, start + 1, end);
        swap(&str[start], &str[i]); // backtrack
    }
}

int main() {
    char str[100];

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove the trailing newline character from fgets
    str[strcspn(str, "\n")] = '\0';

    int length = strlen(str);

    printf("Permutations of the string:\n");
    generatePermutations(str, 0, length - 1);

    return 0;
}

""";

  static const String code_45 = r"""
#include <stdio.h>
#include <ctype.h>

#define ALPHABET_SIZE 26

int isPangram(const char* str) {
    // Initialize an array to track the occurrence of each letter
    int letterCount[ALPHABET_SIZE] = {0};
    int totalCount = 0;

    // Iterate through each character in the string
    for (int i = 0; str[i] != '\0'; i++) {
        // Convert the character to lowercase
        char c = tolower(str[i]);

        // Check if the character is an alphabetical letter
        if (isalpha(c)) {
            // Increment the count of the corresponding letter
            int index = c - 'a';
            if (letterCount[index] == 0) {
                letterCount[index]++;
                totalCount++;
            }
        }
    }

    // Check if the total count of distinct letters is equal to the alphabet size
    return totalCount == ALPHABET_SIZE;
}

int main() {
    char str[100];

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove the trailing newline character from fgets
    str[strcspn(str, "\n")] = '\0';

    if (isPangram(str)) {
        printf("The string is a pangram.\n");
    } else {
        printf("The string is not a pangram.\n");
    }

    return 0;
}

""";

  static const String code_46 = r"""
#include <stdio.h>
#include <string.h>

void padStringWithSpaces(char* str, int targetLength) {
    int currentLength = strlen(str);

    if (currentLength >= targetLength) {
        // No need to pad if the string length is already equal to or greater than the target length
        return;
    }

    int numSpaces = targetLength - currentLength;
    for (int i = 0; i < numSpaces; i++) {
        // Append spaces to the string
        strcat(str, " ");
    }
}

int main() {
    char str[100];
    int targetLength;

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    printf("Enter the target length: ");
    scanf("%d", &targetLength);

    // Remove the trailing newline character from fgets
    str[strcspn(str, "\n")] = '\0';

    padStringWithSpaces(str, targetLength);

    printf("Padded string: %s\n", str);

    return 0;
}

""";

  static const String code_47 = r"""
#include <stdio.h>
#include <ctype.h>
#include <string.h>

void removePunctuation(char* str) {
    int i, j;
    int len = strlen(str);

    for (i = 0, j = 0; i < len; i++) {
        // Check if the current character is a punctuation character
        if (!ispunct(str[i])) {
            // If it's not a punctuation character, copy it to the new string
            str[j++] = str[i];
        }
    }

    // Null-terminate the new string
    str[j] = '\0';
}

int main() {
    char str[100];

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove the trailing newline character from fgets
    str[strcspn(str, "\n")] = '\0';

    removePunctuation(str);

    printf("String without punctuation: %s\n", str);

    return 0;
}

""";

  static const String code_48 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Structure to represent a node in the Huffman tree
struct Node {
    char data;
    unsigned frequency;
    struct Node* left;
    struct Node* right;
};

// Function to create a new node
struct Node* createNode(char data, unsigned frequency) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = data;
    newNode->frequency = frequency;
    newNode->left = NULL;
    newNode->right = NULL;
    return newNode;
}

// Function to generate Huffman codes and store them in the provided array
void generateHuffmanCodes(struct Node* root, char* code, int index, char** huffmanCodes) {
    if (root->left) {
        code[index] = '0';
        generateHuffmanCodes(root->left, code, index + 1, huffmanCodes);
    }

    if (root->right) {
        code[index] = '1';
        generateHuffmanCodes(root->right, code, index + 1, huffmanCodes);
    }

    if (!root->left && !root->right) {
        code[index] = '\0';
        huffmanCodes[root->data] = strdup(code);
    }
}

// Function to compress the input string using Huffman coding
char* compressString(const char* input) {
    // Calculate character frequencies
    unsigned frequencies[256] = {0};
    int i;
    for (i = 0; input[i] != '\0'; i++) {
        frequencies[input[i]]++;
    }

    // Create a priority queue to hold the nodes of the Huffman tree
    // The nodes with the lowest frequencies will have higher priority
    // in the priority queue
    // (You can implement the priority queue using a min-heap or any other suitable data structure)
    // Here, we'll use a simple linear array for demonstration purposes
    int queueSize = 0;
    struct Node* queue[256];

    // Create a leaf node for each character with a non-zero frequency
    for (i = 0; i < 256; i++) {
        if (frequencies[i] > 0) {
            queue[queueSize++] = createNode(i, frequencies[i]);
        }
    }

    // Build the Huffman tree by repeatedly merging the two nodes with the lowest frequency
    while (queueSize > 1) {
        struct Node* left = queue[--queueSize];
        struct Node* right = queue[--queueSize];

        struct Node* mergedNode = createNode('\0', left->frequency + right->frequency);
        mergedNode->left = left;
        mergedNode->right = right;

        queue[queueSize++] = mergedNode;
    }

    // The root of the Huffman tree is the last remaining node in the priority queue
    struct Node* root = queue[0];

    // Generate Huffman codes for each character in the tree
    char* huffmanCodes[256] = {NULL};
    char code[256];
    generateHuffmanCodes(root, code, 0, huffmanCodes);

    // Encode the input string using the generated Huffman codes
    char* encodedString = (char*)malloc(8 * strlen(input) + 1); // Assuming each character is represented by 8 bits
    encodedString[0] = '\0';
    for (i = 0; input[i] != '\0'; i++) {
        strcat(encodedString, huffmanCodes[input[i]]);
    }

    // Compress the encoded string (if necessary)
    // Here, we'll simply return the encoded string as it is without any compression

    // Cleanup memory
    for (i = 0; i < 256; i++) {
        free(huffmanCodes[i]);
    }

    // Return the compressed string
    return encodedString;
}

int main() {
    char input[100];

    printf("Enter a string: ");
    fgets(input, sizeof(input), stdin);

    // Remove the trailing newline character from fgets
    input[strcspn(input, "\n")] = '\0';

    // Compress the input string using Huffman coding
    char* compressedString = compressString(input);

    printf("Compressed string: %s\n", compressedString);

    // Cleanup memory
    free(compressedString);

    return 0;
}


""";

  static const String code_49 = r"""
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

bool isValidEmail(const char* email) {
    int atCount = 0;
    int dotCount = 0;
    int length = strlen(email);

    // Check if the string is empty or contains invalid characters
    if (length == 0 || strchr(email, ' ') != NULL || strchr(email, '\t') != NULL) {
        return false;
    }

    // Check the format of the email address
    for (int i = 0; i < length; i++) {
        char ch = email[i];

        // Check the position and number of '@' and '.'
        if (ch == '@') {
            atCount++;
            if (i == 0 || i == length - 1 || atCount > 1) {
                return false;
            }
        } else if (ch == '.') {
            dotCount++;
            if (i == 0 || i == length - 1 || dotCount > 1) {
                return false;
            }
        }
    }

    // Check if the domain name is valid
    const char* lastDot = strrchr(email, '.');
    if (lastDot == NULL || lastDot - email < 2 || length - (lastDot - email) > 4) {
        return false;
    }

    return true;
}

int main() {
    char email[100];

    printf("Enter an email address: ");
    fgets(email, sizeof(email), stdin);

    // Remove the newline character from fgets
    email[strcspn(email, "\n")] = '\0';

    if (isValidEmail(email)) {
        printf("Valid email address.\n");
    } else {
        printf("Invalid email address.\n");
    }

    return 0;
}

""";

  static const String code_50 = r"""
#include <stdio.h>
#include <string.h>

int max(int a, int b) {
    return (a > b) ? a : b;
}

void printLCS(char *X, char *Y, int m, int n) {
    int L[m + 1][n + 1];

    // Build the LCS matrix
    for (int i = 0; i <= m; i++) {
        for (int j = 0; j <= n; j++) {
            if (i == 0 || j == 0)
                L[i][j] = 0;
            else if (X[i - 1] == Y[j - 1])
                L[i][j] = L[i - 1][j - 1] + 1;
            else
                L[i][j] = max(L[i - 1][j], L[i][j - 1]);
        }
    }

    // Find the longest common subsequence
    int index = L[m][n];
    char lcs[index + 1];
    lcs[index] = '\0';

    int i = m, j = n;
    while (i > 0 && j > 0) {
        if (X[i - 1] == Y[j - 1]) {
            lcs[index - 1] = X[i - 1];
            i--;
            j--;
            index--;
        } else if (L[i - 1][j] > L[i][j - 1])
            i--;
        else
            j--;
    }

    printf("The longest common subsequence is: %s\n", lcs);
}

int main() {
    char X[100], Y[100];

    printf("Enter the first string: ");
    scanf("%s", X);

    printf("Enter the second string: ");
    scanf("%s", Y);

    int m = strlen(X);
    int n = strlen(Y);

    printLCS(X, Y, m, n);

    return 0;
}

""";

  static const String code_51 = r"""
#include <stdio.h>
#include <string.h>

#define MAX_SIZE 100

void countCharacters(char string[]) {
    int frequency[26] = {0};  // Array to store the frequency of each character

    // Traverse the string and update the frequency array
    for (int i = 0; i < strlen(string); i++) {
        if (string[i] >= 'a' && string[i] <= 'z') {
            frequency[string[i] - 'a']++;
        } else if (string[i] >= 'A' && string[i] <= 'Z') {
            frequency[string[i] - 'A']++;
        }
    }

    // Print the frequency of each character
    printf("Character Frequency\n");
    for (int i = 0; i < 26; i++) {
        if (frequency[i] > 0) {
            printf("%c\t%d\n", 'a' + i, frequency[i]);
        }
    }
}

int main() {
    char string[MAX_SIZE];

    printf("Enter a string: ");
    fgets(string, sizeof(string), stdin);

    // Remove the newline character from the string
    string[strcspn(string, "\n")] = '\0';

    countCharacters(string);

    return 0;
}

""";

  static const String code_52 = r"""
#include <stdio.h>
#include <string.h>

#define MAX_SIZE 100

int main() {
    char string[MAX_SIZE];

    printf("Enter a string: ");
    fgets(string, sizeof(string), stdin);

    // Remove the newline character from the string
    string[strcspn(string, "\n")] = '\0';

    char delimiters[] = " ,.";  // Delimiter characters
    char *token;

    printf("Tokens:\n");
    token = strtok(string, delimiters);  // Get the first token

    while (token != NULL) {
        printf("%s\n", token);
        token = strtok(NULL, delimiters);  // Get the next token
    }

    return 0;
}

""";

  static const String code_53 = r"""
#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAX_SIZE 100

void convertToTitleCase(char string[]) {
    int length = strlen(string);

    // Convert the first character to uppercase
    string[0] = toupper(string[0]);

    // Convert the remaining characters to lowercase
    for (int i = 1; i < length; i++) {
        if (string[i] != ' ') {
            string[i] = tolower(string[i]);

            // Convert the character to uppercase if it follows a space
            if (string[i - 1] == ' ') {
                string[i] = toupper(string[i]);
            }
        }
    }
}

int main() {
    char string[MAX_SIZE];

    printf("Enter a string: ");
    fgets(string, sizeof(string), stdin);

    // Remove the newline character from the string
    string[strcspn(string, "\n")] = '\0';

    convertToTitleCase(string);

    printf("Title Case: %s\n", string);

    return 0;
}

""";

  static const String code_54 = r"""
#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAX_SIZE 100

void removeLeadingTrailingWhitespace(char string[]) {
    int length = strlen(string);
    int start = 0;
    int end = length - 1;

    // Find the index of the first non-whitespace character
    while (isspace(string[start])) {
        start++;
    }

    // Find the index of the last non-whitespace character
    while (end >= start && isspace(string[end])) {
        end--;
    }

    // Shift the non-whitespace part to the beginning of the string
    int i;
    for (i = 0; i <= end - start; i++) {
        string[i] = string[start + i];
    }

    // Null-terminate the resulting string
    string[i] = '\0';
}

int main() {
    char string[MAX_SIZE];

    printf("Enter a string: ");
    fgets(string, sizeof(string), stdin);

    // Remove the newline character from the string
    string[strcspn(string, "\n")] = '\0';

    removeLeadingTrailingWhitespace(string);

    printf("String without leading/trailing whitespace: %s\n", string);

    return 0;
}


""";

  static const String code_55 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MAX_SIZE 100
#define CHARACTER_SET "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

void generateRandomPassword(char password[], int length) {
    int charsetLength = sizeof(CHARACTER_SET) - 1;

    // Seed the random number generator
    srand(time(NULL));

    // Generate random characters from the character set
    for (int i = 0; i < length; i++) {
        int randomIndex = rand() % charsetLength;
        password[i] = CHARACTER_SET[randomIndex];
    }

    // Null-terminate the password string
    password[length] = '\0';
}

int main() {
    char password[MAX_SIZE];
    int length;

    printf("Enter the length of the password: ");
    scanf("%d", &length);

    if (length <= 0 || length >= MAX_SIZE) {
        printf("Invalid password length.\n");
        return 1;
    }

    generateRandomPassword(password, length);

    printf("Random Password: %s\n", password);

    return 0;
}


""";

  static const String code_56 = r"""
 #include <stdio.h>
#include <string.h>

#define MAX_SIZE 100

void replaceSubstring(char string[], const char find[], const char replace[]) {
    int findLength = strlen(find);
    int replaceLength = strlen(replace);

    char *position = strstr(string, find);  // Find the first occurrence

    while (position != NULL) {
        // Shift the characters after the occurrence to the right
        memmove(position + replaceLength, position + findLength, strlen(position + findLength) + 1);

        // Copy the replacement string into the position
        memcpy(position, replace, replaceLength);

        // Find the next occurrence
        position = strstr(position + replaceLength, find);
    }
}

int main() {
    char string[MAX_SIZE];
    char find[MAX_SIZE];
    char replace[MAX_SIZE];

    printf("Enter a string: ");
    fgets(string, sizeof(string), stdin);

    printf("Enter the substring to find: ");
    fgets(find, sizeof(find), stdin);

    printf("Enter the replacement substring: ");
    fgets(replace, sizeof(replace), stdin);

    // Remove the newline characters from the strings
    string[strcspn(string, "\n")] = '\0';
    find[strcspn(find, "\n")] = '\0';
    replace[strcspn(replace, "\n")] = '\0';

    replaceSubstring(string, find, replace);

    printf("Modified string: %s\n", string);

    return 0;
}


""";

  static const String code_57 = r"""
#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAX_SIZE 100

void convertToCamelCase(char string[]) {
    int length = strlen(string);
    int currentIndex = 0;
    int nextIndex = 0;

    // Convert the first character to lowercase
    string[0] = tolower(string[0]);

    // Find the next non-alphanumeric character and convert the following character to uppercase
    while (currentIndex < length) {
        if (!isalnum(string[currentIndex])) {
            nextIndex = currentIndex + 1;
            while (nextIndex < length && !isalnum(string[nextIndex])) {
                nextIndex++;
            }

            if (nextIndex < length) {
                string[nextIndex] = toupper(string[nextIndex]);
            }
        }

        currentIndex++;
    }
}

int main() {
    char string[MAX_SIZE];

    printf("Enter a string: ");
    fgets(string, sizeof(string), stdin);

    // Remove the newline character from the string
    string[strcspn(string, "\n")] = '\0';

    convertToCamelCase(string);

    printf("CamelCase: %s\n", string);

    return 0;
}


""";

  static const String code_58 = r"""
#include <stdio.h>
#include <string.h>

#define MAX_SIZE 100

char findSecondMostFrequentChar(char string[]) {
    int frequency[256] = {0};  // Assuming ASCII characters

    int length = strlen(string);

    // Calculate the frequency of each character
    for (int i = 0; i < length; i++) {
        frequency[(int)string[i]]++;
    }

    // Find the maximum and second maximum frequencies
    int maxFreq = 0;
    int secondMaxFreq = 0;

    for (int i = 0; i < 256; i++) {
        if (frequency[i] > maxFreq) {
            secondMaxFreq = maxFreq;
            maxFreq = frequency[i];
        } else if (frequency[i] > secondMaxFreq && frequency[i] < maxFreq) {
            secondMaxFreq = frequency[i];
        }
    }

    // Find the character with the second maximum frequency
    for (int i = 0; i < length; i++) {
        if (frequency[(int)string[i]] == secondMaxFreq) {
            return string[i];
        }
    }

    // Return a null character if no second most frequent character found
    return '\0';
}

int main() {
    char string[MAX_SIZE];

    printf("Enter a string: ");
    fgets(string, sizeof(string), stdin);

    // Remove the newline character from the string
    string[strcspn(string, "\n")] = '\0';

    char secondMostFrequentChar = findSecondMostFrequentChar(string);

    if (secondMostFrequentChar != '\0') {
        printf("Second Most Frequent Character: %c\n", secondMostFrequentChar);
    } else {
        printf("No second most frequent character found.\n");
    }

    return 0;
}

""";

  static const String code_59 = r"""
 #include <stdio.h>
#include <openssl/rsa.h>
#include <openssl/pem.h>

#define MAX_SIZE 1000

int rsaEncrypt(const char* publicKeyFile, const unsigned char* message, size_t messageLength, unsigned char* encryptedMessage)
{
    FILE* publicKey = fopen(publicKeyFile, "rb");
    if (publicKey == NULL) {
        perror("Failed to open public key file");
        return -1;
    }

    RSA* rsa = PEM_read_RSA_PUBKEY(publicKey, NULL, NULL, NULL);
    fclose(publicKey);

    if (rsa == NULL) {
        perror("Failed to read public key");
        return -1;
    }

    int encryptedLength = RSA_public_encrypt(messageLength, message, encryptedMessage, rsa, RSA_PKCS1_PADDING);
    RSA_free(rsa);

    if (encryptedLength == -1) {
        perror("Encryption failed");
        return -1;
    }

    return encryptedLength;
}

int main() {
    const char* publicKeyFile = "public_key.pem";
    unsigned char message[MAX_SIZE] = "Hello, World!";
    unsigned char encryptedMessage[MAX_SIZE];

    int encryptedLength = rsaEncrypt(publicKeyFile, message, strlen((const char*)message), encryptedMessage);
    if (encryptedLength != -1) {
        printf("Encrypted Message: ");
        for (int i = 0; i < encryptedLength; i++) {
            printf("%02X ", encryptedMessage[i]);
        }
        printf("\n");
    }

    return 0;
}


""";

  static const String code_60 = r"""
#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAX_SIZE 100

const char* morseCode[] = {
    ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.",
    "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--..",
    ".----", "..---", "...--", "....-", ".....", "-....", "--...", "---..", "----.", "-----"
};

void convertToMorseCode(const char* string) {
    int length = strlen(string);

    for (int i = 0; i < length; i++) {
        char c = toupper(string[i]);

        if (isalpha(c)) {
            printf("%s ", morseCode[c - 'A']);
        } else if (isdigit(c)) {
            printf("%s ", morseCode[c - '0' + 26]);
        } else if (c == ' ') {
            printf(" / ");
        }
    }

    printf("\n");
}

int main() {
    char string[MAX_SIZE];

    printf("Enter a string: ");
    fgets(string, sizeof(string), stdin);

    // Remove the newline character from the string
    string[strcspn(string, "\n")] = '\0';

    convertToMorseCode(string);

    return 0;
}

""";

  static const String code_61 = r"""
 #include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define ALPHABET_SIZE 26

// Trie node structure
struct TrieNode {
    struct TrieNode* children[ALPHABET_SIZE];
    bool isEndOfWord;
};

// Function to create a new trie node
struct TrieNode* createNode() {
    struct TrieNode* newNode = (struct TrieNode*)malloc(sizeof(struct TrieNode));
    newNode->isEndOfWord = false;

    for (int i = 0; i < ALPHABET_SIZE; i++) {
        newNode->children[i] = NULL;
    }

    return newNode;
}

// Function to insert a word into the trie
void insert(struct TrieNode* root, const char* word) {
    struct TrieNode* currentNode = root;

    for (int i = 0; word[i] != '\0'; i++) {
        int index = word[i] - 'a';

        if (currentNode->children[index] == NULL) {
            currentNode->children[index] = createNode();
        }

        currentNode = currentNode->children[index];
    }

    currentNode->isEndOfWord = true;
}

// Function to search for a word in the trie
bool search(struct TrieNode* root, const char* word) {
    struct TrieNode* currentNode = root;

    for (int i = 0; word[i] != '\0'; i++) {
        int index = word[i] - 'a';

        if (currentNode->children[index] == NULL) {
            return false;
        }

        currentNode = currentNode->children[index];
    }

    return currentNode != NULL && currentNode->isEndOfWord;
}

// Function to check if a node has any children
bool hasChildren(struct TrieNode* node) {
    for (int i = 0; i < ALPHABET_SIZE; i++) {
        if (node->children[i] != NULL) {
            return true;
        }
    }
    return false;
}

// Function to delete a word from the trie
bool delete(struct TrieNode* root, const char* word) {
    if (root == NULL || word == NULL) {
        return false;
    }

    struct TrieNode* currentNode = root;
    struct TrieNode* parentNode = NULL;
    int index = 0;

    // Traverse the trie to find the node corresponding to the last character of the word
    for (int i = 0; word[i] != '\0'; i++) {
        index = word[i] - 'a';

        if (currentNode->children[index] == NULL) {
            return false;
        }

        parentNode = currentNode;
        currentNode = currentNode->children[index];
    }

    // Mark the current node as not the end of a word
    currentNode->isEndOfWord = false;

    // Delete the word only if there are no other child nodes
    if (!hasChildren(currentNode)) {
        free(currentNode);
        parentNode->children[index] = NULL;
    }

    return true;
}

// Function to test the trie implementation
int main() {
    struct TrieNode* root = createNode();

    // Insert some words into the trie
    insert(root, "apple");
    insert(root, "banana");
    insert(root, "car");
    insert(root, "carrot");

    // Search for words in the trie
    printf("Search Results:\n");
    printf("Apple: %s\n", search(root, "apple") ? "Found" : "Not Found");
    printf("Banana: %s\n", search(root, "banana") ? "Found" : "Not Found");
    printf("Car: %s\n", search(root, "car") ? "Found" : "Not Found");
    printf("Carrot: %s\n", search(root, "carrot") ? "Found" : "Not Found");
    printf("Dog: %s\n", search(root, "dog") ? "Found" : "Not Found");

    // Delete a word from the trie
    delete(root, "banana");

    // Search for the deleted word again
    printf("After Deleting 'banana':\n");
    printf("Banana: %s\n", search(root, "banana") ? "Found" : "Not Found");

    return 0;
}


""";

  static const String code_62 = r"""
 #include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

#define DICTIONARY_SIZE 4096

// Function to compress a string using the LZW algorithm
void compressString(const char* inputString) {
    int inputLength = strlen(inputString);

    // Create and initialize the dictionary
    char dictionary[DICTIONARY_SIZE][DICTIONARY_SIZE];
    int dictionarySize = 256;

    for (int i = 0; i < dictionarySize; i++) {
        dictionary[i][0] = i;
        dictionary[i][1] = '\0';
    }

    // Compression process
    char currentSymbol;
    char previousSymbol;
    char currentSequence[DICTIONARY_SIZE];
    int currentSequenceLength = 0;

    printf("Compressed String: ");

    for (int i = 0; i < inputLength; i++) {
        currentSymbol = inputString[i];
        currentSequence[currentSequenceLength] = currentSymbol;
        currentSequenceLength++;
        currentSequence[currentSequenceLength] = '\0';

        // Check if the current sequence is in the dictionary
        bool isInDictionary = false;
        int sequenceIndex = -1;

        for (int j = 0; j < dictionarySize; j++) {
            if (strcmp(currentSequence, dictionary[j]) == 0) {
                isInDictionary = true;
                sequenceIndex = j;
                break;
            }
        }

        // If the current sequence is not in the dictionary, add it
        if (!isInDictionary) {
            dictionary[dictionarySize][0] = currentSymbol;
            dictionary[dictionarySize][1] = '\0';
            dictionarySize++;

            // Output the code for the previous sequence
            printf("%d ", previousSymbol);

            // Reset the current sequence
            currentSequence[0] = currentSymbol;
            currentSequence[1] = '\0';
            currentSequenceLength = 1;
        }

        previousSymbol = sequenceIndex;
    }

    // Output the code for the last sequence
    printf("%d\n", previousSymbol);
}

// Function to test the LZW compression
int main() {
    const char* inputString = "ABABABAABBABAABAAAABABBBAB";
    printf("Input String: %s\n", inputString);

    compressString(inputString);

    return 0;
}


""";

  static const String code_63 = r"""
#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAX_SIZE 100

// Function to check if a character is a vowel
int isVowel(char c) {
    c = tolower(c);
    return (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u');
}

// Function to convert a word to Pig Latin
void convertToPigLatin(char* word) {
    int length = strlen(word);

    if (isVowel(word[0])) {
        // Word starts with a vowel, simply add "ay" to the end
        strcat(word, "ay");
    } else {
        // Word starts with a consonant, move the consonant cluster to the end and add "ay"
        char firstLetter = word[0];
        memmove(word, word + 1, length - 1);
        word[length - 1] = firstLetter;
        word[length] = 'a';
        word[length + 1] = 'y';
        word[length + 2] = '\0';
    }
}

// Function to convert a string to Pig Latin
void convertStringToPigLatin(char* string) {
    char* word = strtok(string, " ");

    while (word != NULL) {
        convertToPigLatin(word);
        printf("%s ", word);
        word = strtok(NULL, " ");
    }

    printf("\n");
}

// Function to test the Pig Latin conversion
int main() {
    char string[MAX_SIZE];

    printf("Enter a string: ");
    fgets(string, sizeof(string), stdin);

    // Remove the newline character from the string
    string[strcspn(string, "\n")] = '\0';

    convertStringToPigLatin(string);

    return 0;
}

""";

  static const String code_64 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <openssl/aes.h>

// Function to encrypt a string using AES algorithm
void encryptStringAES(const char* inputString, const char* key) {
    AES_KEY aesKey;
    unsigned char iv[AES_BLOCK_SIZE];
    unsigned char encryptedData[AES_BLOCK_SIZE];
    unsigned char inputBuffer[AES_BLOCK_SIZE];

    // Set the encryption key
    if (AES_set_encrypt_key((const unsigned char*)key, 128, &aesKey) < 0) {
        fprintf(stderr, "Error: Failed to set encryption key.\n");
        return;
    }

    // Generate a random initialization vector (IV)
    RAND_bytes(iv, AES_BLOCK_SIZE);

    // Encrypt each block of the input string
    int inputLength = strlen(inputString);
    int numBlocks = (inputLength / AES_BLOCK_SIZE) + 1;

    printf("Encrypted String: ");

    for (int i = 0; i < numBlocks; i++) {
        memset(inputBuffer, 0, AES_BLOCK_SIZE);
        memcpy(inputBuffer, inputString + i * AES_BLOCK_SIZE, AES_BLOCK_SIZE);

        AES_cbc_encrypt(inputBuffer, encryptedData, AES_BLOCK_SIZE, &aesKey, iv, AES_ENCRYPT);

        // Output the encrypted data
        for (int j = 0; j < AES_BLOCK_SIZE; j++) {
            printf("%02x", encryptedData[j]);
        }
    }

    printf("\n");
}

// Function to test the AES encryption
int main() {
    const char* inputString = "Hello, World!";
    const char* encryptionKey = "mysecretkey";

    encryptStringAES(inputString, encryptionKey);

    return 0;
}

""";

  static const String code_65 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

#define MAX_SIZE 100

typedef struct {
    char data[MAX_SIZE];
    int top;
} StringStack;

// Function to initialize the stack
void initializeStack(StringStack* stack) {
    stack->top = -1;
}

// Function to check if the stack is empty
bool isEmpty(StringStack* stack) {
    return stack->top == -1;
}

// Function to check if the stack is full
bool isFull(StringStack* stack) {
    return stack->top == MAX_SIZE - 1;
}

// Function to push an element onto the stack
void push(StringStack* stack, char element) {
    if (isFull(stack)) {
        printf("Error: Stack is full.\n");
        return;
    }

    stack->top++;
    stack->data[stack->top] = element;
}

// Function to pop an element from the stack
char pop(StringStack* stack) {
    if (isEmpty(stack)) {
        printf("Error: Stack is empty.\n");
        return '\0';
    }

    char element = stack->data[stack->top];
    stack->top--;

    return element;
}

// Function to get the top element of the stack
char peek(StringStack* stack) {
    if (isEmpty(stack)) {
        printf("Error: Stack is empty.\n");
        return '\0';
    }

    return stack->data[stack->top];
}

// Function to print the contents of the stack
void printStack(StringStack* stack) {
    if (isEmpty(stack)) {
        printf("Stack is empty.\n");
        return;
    }

    printf("Stack Contents: ");

    for (int i = stack->top; i >= 0; i--) {
        printf("%c ", stack->data[i]);
    }

    printf("\n");
}

// Function to test the string-based stack implementation
int main() {
    StringStack stack;
    initializeStack(&stack);

    push(&stack, 'H');
    push(&stack, 'e');
    push(&stack, 'l');
    push(&stack, 'l');
    push(&stack, 'o');

    printStack(&stack); // Output: Stack Contents: o l l e H

    char topElement = peek(&stack);
    printf("Top Element: %c\n", topElement); // Output: Top Element: o

    char poppedElement = pop(&stack);
    printf("Popped Element: %c\n", poppedElement); // Output: Popped Element: o

    printStack(&stack); // Output: Stack Contents: l l e H

    return 0;
}


""";

  static const String code_66 = r"""
 #include <stdio.h>
#include <string.h>
#include <limits.h>

#define MAX_SIZE 100

char* smallestSubstring(const char* s, const char* charSet) {
    int charCount[UCHAR_MAX + 1] = {0};  // To keep track of character counts
    int uniqueChars = 0;  // Number of unique characters in the given set
    int minLen = INT_MAX;  // Length of the smallest substring
    int left = 0;  // Left pointer of the sliding window
    int count = 0;  // Count of characters found in the given set

    // Calculate the count of each character in the given set
    for (int i = 0; charSet[i] != '\0'; i++) {
        charCount[charSet[i]]++;
    }

    // Count the number of unique characters in the given set
    for (int i = 0; i <= UCHAR_MAX; i++) {
        if (charCount[i] > 0) {
            uniqueChars++;
        }
    }

    int sLen = strlen(s);
    int minStart = -1;  // Starting index of the smallest substring

    for (int right = 0; right < sLen; right++) {
        if (charCount[s[right]] > 0) {
            charCount[s[right]]--;
            if (charCount[s[right]] == 0) {
                count++;
            }
        }

        while (count == uniqueChars) {
            int windowLen = right - left + 1;
            if (windowLen < minLen) {
                minLen = windowLen;
                minStart = left;
            }

            if (charCount[s[left]] == 0) {
                count--;
            }
            charCount[s[left]]++;
            left++;
        }
    }

    if (minStart == -1) {
        return "";  // No substring found
    }

    char* minSubstring = malloc((minLen + 1) * sizeof(char));
    strncpy(minSubstring, s + minStart, minLen);
    minSubstring[minLen] = '\0';

    return minSubstring;
}

int main() {
    const char* s = "aabbccdefga";
    const char* charSet = "abc";

    char* result = smallestSubstring(s, charSet);
    printf("Smallest substring containing all characters: %s\n", result);

    free(result);

    return 0;
}

""";

  static const String code_67 = r"""
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* bwt_compress(const char* s) {
    int n = strlen(s);
    char* rotations[n];
    for (int i = 0; i < n; i++) {
        rotations[i] = malloc((n + 1) * sizeof(char));
        strcpy(rotations[i], s + i);
        strncat(rotations[i], s, i);
    }
    qsort(rotations, n, sizeof(char*), strcmp);  // Sort the rotations lexicographically
    char* bwt = malloc((n + 1) * sizeof(char));
    for (int i = 0; i < n; i++) {
        bwt[i] = rotations[i][n - 1];
        free(rotations[i]);
    }
    bwt[n] = '\0';
    return bwt;
}

char* bwt_decompress(const char* bwt) {
    int n = strlen(bwt);
    char* table[n];
    for (int i = 0; i < n; i++) {
        table[i] = malloc((n + 1) * sizeof(char));
    }
    for (int i = 0; i < n; i++) {
        strcpy(table[i], bwt);
        qsort(table[i], n, sizeof(char), strcmp);
        for (int j = 0; j < n; j++) {
            table[i][j] = bwt[j];
        }
    }
    char* decompressed = malloc((n + 1) * sizeof(char));
    int row = 0;
    while (bwt[row] != '$') {
        decompressed[row] = bwt[row];
        for (int i = 0; i < n; i++) {
            if (table[i][row] == bwt[row]) {
                row = i;
                break;
            }
        }
    }
    decompressed[row] = '\0';
    for (int i = 0; i < n; i++) {
        free(table[i]);
    }
    return decompressed;
}

int main() {
    const char* original_string = "banana";
    
    char* compressed_string = bwt_compress(original_string);
    printf("Compressed string: %s\n", compressed_string);  // Output: "annb$aa"
    
    char* decompressed_string = bwt_decompress(compressed_string);
    printf("Decompressed string: %s\n", decompressed_string);  // Output: "banana"
    
    free(compressed_string);
    free(decompressed_string);

    return 0;
}



""";

  static const String code_68 = r"""
#include <stdio.h>
#include <string.h>

// Function to convert a number to Roman numerals
char* intToRoman(int num) {
    // Define the symbols and their corresponding values
    char* symbols[] = {"M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"};
    int values[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};

    char* result = malloc(20 * sizeof(char)); // Allocate memory for the result string
    result[0] = '\0'; // Initialize the result string

    for (int i = 0; i < 13; i++) {
        while (num >= values[i]) {
            strcat(result, symbols[i]); // Concatenate the symbol to the result string
            num -= values[i]; // Subtract the corresponding value from the number
        }
    }

    return result;
}

int main() {
    int num = 3549;
    char* roman = intToRoman(num);
    printf("Roman numeral representation of %d is: %s\n", num, roman);

    free(roman);

    return 0;
}


""";

  static const String code_69 = r"""
 #include <stdio.h>
#include <string.h>

char* longestPalindrome(char* s) {
    int len = strlen(s);
    int maxLen = 0;
    int start = 0;
    
    // Create a table to store the results of substring comparisons
    int table[len][len];
    memset(table, 0, sizeof(table));

    // Single character substrings are palindromes
    for (int i = 0; i < len; i++) {
        table[i][i] = 1;
        maxLen = 1;
    }

    // Check for palindromes of length 2
    for (int i = 0; i < len - 1; i++) {
        if (s[i] == s[i + 1]) {
            table[i][i + 1] = 1;
            start = i;
            maxLen = 2;
        }
    }

    // Check for palindromes of length > 2
    for (int k = 3; k <= len; k++) {
        for (int i = 0; i < len - k + 1; i++) {
            int j = i + k - 1;
            if (table[i + 1][j - 1] && s[i] == s[j]) {
                table[i][j] = 1;
                if (k > maxLen) {
                    start = i;
                    maxLen = k;
                }
            }
        }
    }

    // Extract the longest palindromic substring
    char* result = malloc((maxLen + 1) * sizeof(char));
    strncpy(result, s + start, maxLen);
    result[maxLen] = '\0';

    return result;
}

int main() {
    char* s = "babad";
    char* longest = longestPalindrome(s);
    printf("Longest palindromic substring: %s\n", longest);

    free(longest);

    return 0;
}

""";

  static const String code_70 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Modular exponentiation function (to calculate a^b mod p)
long long int modExp(long long int a, long long int b, long long int p) {
    long long int result = 1;
    a = a % p;

    while (b > 0) {
        if (b & 1)
            result = (result * a) % p;
        b = b >> 1;
        a = (a * a) % p;
    }

    return result;
}

// Function to perform Diffie-Hellman key exchange
long long int diffieHellmanKeyExchange(long long int p, long long int g) {
    long long int a, A, B, secretKey;

    // Generate private key for party A
    a = rand() % (p - 2) + 1;

    // Calculate public key for party A
    A = modExp(g, a, p);

    // Generate private key for party B
    long long int b = rand() % (p - 2) + 1;

    // Calculate public key for party B
    B = modExp(g, b, p);

    // Calculate the shared secret key
    long long int sharedSecretA = modExp(B, a, p);
    long long int sharedSecretB = modExp(A, b, p);

    if (sharedSecretA == sharedSecretB)
        secretKey = sharedSecretA;

    return secretKey;
}

// Function to encrypt a string using XOR operation
void encryptString(char* str, long long int key) {
    int i = 0;
    while (str[i]) {
        str[i] = str[i] ^ key;
        i++;
    }
}

int main() {
    long long int p = 23;  // Prime number for the modulo operation
    long long int g = 5;   // Generator

    char str[] = "Hello, World!";
    printf("Original string: %s\n", str);

    // Perform Diffie-Hellman key exchange
    long long int key = diffieHellmanKeyExchange(p, g);
    printf("Shared key: %lld\n", key);

    // Encrypt the string using the shared key
    encryptString(str, key);
    printf("Encrypted string: %s\n", str);

    // Decrypt the string using the shared key
    encryptString(str, key);
    printf("Decrypted string: %s\n", str);

    return 0;
}


""";

  static const String code_71 = r"""
#include <stdio.h>
#include <string.h>

void removeHtmlTags(char* str) {
    int insideTag = 0;
    char *output = str;

    while (*str) {
        if (*str == '<') {
            insideTag = 1;
        }
        else if (*str == '>') {
            insideTag = 0;
        }
        else if (!insideTag) {
            *output = *str;
            output++;
        }

        str++;
    }

    *output = '\0';
}

int main() {
    char input[1000];
    printf("Enter a string with HTML tags: ");
    fgets(input, sizeof(input), stdin);
    input[strcspn(input, "\n")] = '\0';  // Remove trailing newline if present

    removeHtmlTags(input);

    printf("String after removing HTML tags: %s\n", input);

    return 0;
}


""";

  static const String code_72 = r"""
#include <stdio.h>
#include <string.h>

void convertToBCD(const char* str, unsigned char* bcd) {
    int i, j;
    int length = strlen(str);

    for (i = 0, j = 0; i < length; i++, j += 2) {
        bcd[j] = (str[i] - '0') << 4;
        bcd[j] |= (str[i + 1] - '0');
    }
}

void printBCD(const unsigned char* bcd, int length) {
    int i;

    for (i = 0; i < length; i++) {
        printf("%02X ", bcd[i]);
    }

    printf("\n");
}

int main() {
    char input[100];
    unsigned char bcd[50];

    printf("Enter a string: ");
    fgets(input, sizeof(input), stdin);
    input[strcspn(input, "\n")] = '\0';  // Remove trailing newline if present

    convertToBCD(input, bcd);

    printf("BCD representation: ");
    printBCD(bcd, (strlen(input) + 1) / 2);

    return 0;
}

""";

  static const String code_73 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_SIZE 100

typedef struct {
    char* elements[MAX_SIZE];
    int front;
    int rear;
} Queue;

Queue* createQueue() {
    Queue* queue = (Queue*)malloc(sizeof(Queue));
    queue->front = -1;
    queue->rear = -1;
    return queue;
}

int isFull(Queue* queue) {
    return (queue->rear == MAX_SIZE - 1);
}

int isEmpty(Queue* queue) {
    return (queue->front == -1);
}

void enqueue(Queue* queue, const char* str) {
    if (isFull(queue)) {
        printf("Error: Queue is full, cannot enqueue.\n");
        return;
    }

    char* element = strdup(str);
    queue->elements[++queue->rear] = element;

    if (queue->front == -1) {
        queue->front = 0;
    }
}

char* dequeue(Queue* queue) {
    if (isEmpty(queue)) {
        printf("Error: Queue is empty, cannot dequeue.\n");
        return NULL;
    }

    char* element = queue->elements[queue->front];

    if (queue->front == queue->rear) {
        queue->front = -1;
        queue->rear = -1;
    } else {
        queue->front++;
    }

    return element;
}

void printQueue(Queue* queue) {
    if (isEmpty(queue)) {
        printf("Queue is empty.\n");
        return;
    }

    printf("Queue elements:\n");

    for (int i = queue->front; i <= queue->rear; i++) {
        printf("%s\n", queue->elements[i]);
    }
}

int main() {
    Queue* queue = createQueue();

    enqueue(queue, "Apple");
    enqueue(queue, "Banana");
    enqueue(queue, "Cherry");

    printQueue(queue);

    char* dequeued = dequeue(queue);
    printf("Dequeued element: %s\n", dequeued);
    free(dequeued);

    printQueue(queue);

    enqueue(queue, "Date");

    printQueue(queue);

    return 0;
}

""";

  static const String code_74 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define MAX_SIZE 100

typedef struct {
    char* word;
    int frequency;
} WordFrequency;

void addToWordFrequency(WordFrequency* wordFreq, int* wordCount, const char* word) {
    int i;
    for (i = 0; i < *wordCount; i++) {
        if (strcmp(wordFreq[i].word, word) == 0) {
            wordFreq[i].frequency++;
            return;
        }
    }

    wordFreq[*wordCount].word = strdup(word);
    wordFreq[*wordCount].frequency = 1;
    (*wordCount)++;
}

void findMostFrequentWord(const char* str, char* result) {
    WordFrequency wordFreq[MAX_SIZE];
    int wordCount = 0;

    const char delimiters[] = " \t\n.,;:!?'\"";

    char* word = strtok(str, delimiters);
    while (word != NULL) {
        addToWordFrequency(wordFreq, &wordCount, word);
        word = strtok(NULL, delimiters);
    }

    int maxFrequency = 0;
    char* mostFrequentWord = NULL;

    for (int i = 0; i < wordCount; i++) {
        if (wordFreq[i].frequency > maxFrequency) {
            maxFrequency = wordFreq[i].frequency;
            mostFrequentWord = wordFreq[i].word;
        }
    }

    if (mostFrequentWord != NULL) {
        strcpy(result, mostFrequentWord);
    } else {
        strcpy(result, "No words found");
    }

    for (int i = 0; i < wordCount; i++) {
        free(wordFreq[i].word);
    }
}

int main() {
    char input[1000];
    char mostFrequentWord[100];

    printf("Enter a string: ");
    fgets(input, sizeof(input), stdin);
    input[strcspn(input, "\n")] = '\0';  // Remove trailing newline if present

    findMostFrequentWord(input, mostFrequentWord);

    printf("Most frequent word: %s\n", mostFrequentWord);

    return 0;
}


""";

  static const String code_75 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SYMBOL_COUNT 256

typedef struct {
    int low;
    int high;
} Interval;

void compress(const char* input) {
    int symbolFreq[SYMBOL_COUNT] = { 0 };
    int inputLength = strlen(input);

    // Calculate symbol frequencies
    for (int i = 0; i < inputLength; i++) {
        symbolFreq[(unsigned char)input[i]]++;
    }

    // Calculate symbol probabilities
    int totalSymbols = 0;
    for (int i = 0; i < SYMBOL_COUNT; i++) {
        totalSymbols += symbolFreq[i];
    }

    double symbolProb[SYMBOL_COUNT] = { 0.0 };
    for (int i = 0; i < SYMBOL_COUNT; i++) {
        symbolProb[i] = (double)symbolFreq[i] / totalSymbols;
    }

    // Calculate symbol intervals
    Interval symbolInterval[SYMBOL_COUNT];
    int currentLow = 0;
    for (int i = 0; i < SYMBOL_COUNT; i++) {
        symbolInterval[i].low = currentLow;
        symbolInterval[i].high = currentLow + (int)(symbolProb[i] * (double)(1 << 30)) - 1;
        currentLow = symbolInterval[i].high + 1;
    }

    // Encode the input string
    int low = 0;
    int high = (int)(1 << 30) - 1;

    for (int i = 0; i < inputLength; i++) {
        int symbol = (unsigned char)input[i];
        int range = high - low + 1;
        high = low + (range * symbolInterval[symbol].high) / totalSymbols - 1;
        low = low + (range * symbolInterval[symbol].low) / totalSymbols;

        // Output the compressed bits
        while (1) {
            if (high < (1 << 29)) {
                printf("0");
                for (int j = 0; j < low / (1 << 29); j++) {
                    printf("1");
                }
                low = 2 * low;
                high = 2 * high + 1;
            }
            else if (low >= (1 << 29) && high >= (1 << 30)) {
                printf("1");
                for (int j = 0; j < (low - (1 << 29)) / (1 << 29); j++) {
                    printf("0");
                }
                low = 2 * (low - (1 << 29));
                high = 2 * (high - (1 << 29)) + 1;
            }
            else {
                break;
            }
        }
    }

    // Output the final compressed bits
    printf("1");
    for (int i = 0; i < 30; i++) {
        printf("%d", (low >> 29 - i) & 1);
    }
    printf("\n");
}

int main() {
    char input[1000];

    printf("Enter a string to compress: ");
    fgets(input, sizeof(input), stdin);
    input[strcspn(input, "\n")] = '\0';  // Remove trailing newline if present

    printf("Compressed string: ");
    compress(input);

    return 0;
}

""";

  static const String code_76 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* convertToGrayCode(const char* input) {
    size_t length = strlen(input);
    char* grayCode = (char*)malloc((length + 1) * sizeof(char));
    grayCode[length] = '\0';

    grayCode[0] = input[0];

    for (size_t i = 1; i < length; i++) {
        grayCode[i] = input[i - 1] ^ input[i];
    }

    return grayCode;
}

int main() {
    char input[1000];
    char* grayCode;

    printf("Enter a string: ");
    fgets(input, sizeof(input), stdin);
    input[strcspn(input, "\n")] = '\0';  // Remove trailing newline if present

    grayCode = convertToGrayCode(input);

    printf("Gray code: %s\n", grayCode);

    free(grayCode);

    return 0;
}

""";

  static const String code_77 = r"""
 #include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Node {
    char data[100];
    struct Node* next;
} Node;

Node* createNode(const char* data) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    strcpy(newNode->data, data);
    newNode->next = NULL;
    return newNode;
}

void insert(Node** head, const char* data) {
    Node* newNode = createNode(data);
    if (*head == NULL) {
        *head = newNode;
    } else {
        Node* current = *head;
        while (current->next != NULL) {
            current = current->next;
        }
        current->next = newNode;
    }
}

void display(Node* head) {
    Node* current = head;
    while (current != NULL) {
        printf("%s ", current->data);
        current = current->next;
    }
    printf("\n");
}

int main() {
    Node* head = NULL;

    // Insert elements into the linked list
    insert(&head, "Hello");
    insert(&head, "World");
    insert(&head, "Linked");
    insert(&head, "List");

    // Display the linked list
    printf("Linked List: ");
    display(head);

    return 0;
}

""";

  static const String code_78 = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

bool isValidIPv4Address(const char* ipAddress) {
    if (ipAddress == NULL) {
        return false;
    }

    // Tokenize the IP address using periods as delimiters
    char* token;
    char* copy = strdup(ipAddress);
    int count = 0;

    token = strtok(copy, ".");
    while (token != NULL) {
        count++;

        // Check if the token is a valid number between 0 and 255
        int number = atoi(token);
        if (number < 0 || number > 255) {
            free(copy);
            return false;
        }

        // Check if the token has leading zeros
        if (strlen(token) > 1 && token[0] == '0') {
            free(copy);
            return false;
        }

        token = strtok(NULL, ".");
    }

    free(copy);

    // Check if there are exactly 4 tokens
    if (count != 4) {
        return false;
    }

    return true;
}

int main() {
    char ipAddress[16];

    printf("Enter an IPv4 address: ");
    fgets(ipAddress, sizeof(ipAddress), stdin);
    ipAddress[strcspn(ipAddress, "\n")] = '\0';  // Remove trailing newline if present

    if (isValidIPv4Address(ipAddress)) {
        printf("Valid IPv4 address.\n");
    } else {
        printf("Invalid IPv4 address.\n");
    }

    return 0;
}

""";

  static const String code_79 = r"""
 #include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <openssl/ec.h>
#include <openssl/ecdh.h>
#include <openssl/evp.h>

void handleErrors() {
    printf("Error occurred.\n");
    exit(1);
}

void encryptString(const char* message, const EC_KEY* recipientPublicKey) {
    // Get the recipient's public key in binary form
    size_t publicKeySize = i2o_ECPublicKey(recipientPublicKey, NULL);
    unsigned char* publicKeyBuffer = (unsigned char*)malloc(publicKeySize);
    unsigned char* encryptedKey = NULL;
    size_t encryptedKeySize;

    if (publicKeyBuffer == NULL) {
        handleErrors();
    }

    if (i2o_ECPublicKey(recipientPublicKey, &publicKeyBuffer) != publicKeySize) {
        handleErrors();
    }

    // Generate the shared secret key
    EVP_PKEY* ephemeralKey = EVP_PKEY_new();
    EVP_PKEY_CTX* ctx = EVP_PKEY_CTX_new_id(EVP_PKEY_EC, NULL);

    if (EVP_PKEY_keygen_init(ctx) <= 0) {
        handleErrors();
    }

    if (EVP_PKEY_CTX_set_ec_paramgen_curve_nid(ctx, NID_secp256k1) <= 0) {
        handleErrors();
    }

    if (EVP_PKEY_keygen(ctx, &ephemeralKey) <= 0) {
        handleErrors();
    }

    // Encrypt the shared secret key using the recipient's public key
    if (EVP_PKEY_derive_set_peer(ephemeralKey, recipientPublicKey) <= 0) {
        handleErrors();
    }

    if (EVP_PKEY_derive(ephemeralKey, NULL, &encryptedKeySize) <= 0) {
        handleErrors();
    }

    encryptedKey = (unsigned char*)malloc(encryptedKeySize);

    if (EVP_PKEY_derive(ephemeralKey, encryptedKey, &encryptedKeySize) <= 0) {
        handleErrors();
    }

    // Encrypt the message using the shared secret key
    EVP_CIPHER_CTX* cipherCtx = EVP_CIPHER_CTX_new();
    int len;
    unsigned char* ciphertext = (unsigned char*)malloc(strlen(message) + EVP_CIPHER_CTX_block_size(cipherCtx));
    int ciphertextLen;

    EVP_EncryptInit_ex(cipherCtx, EVP_aes_256_cbc(), NULL, encryptedKey, publicKeyBuffer);
    EVP_EncryptUpdate(cipherCtx, ciphertext, &len, (unsigned char*)message, strlen(message));
    ciphertextLen = len;
    EVP_EncryptFinal_ex(cipherCtx, ciphertext + len, &len);
    ciphertextLen += len;

    // Print the encrypted message
    printf("Encrypted message: ");
    for (int i = 0; i < ciphertextLen; i++) {
        printf("%02x", ciphertext[i]);
    }
    printf("\n");

    // Clean up
    free(publicKeyBuffer);
    free(encryptedKey);
    EVP_PKEY_free(ephemeralKey);
    EVP_PKEY_CTX_free(ctx);
    EVP_CIPHER_CTX_free(cipherCtx);
    free(ciphertext);
}

int main() {
    // Generate the recipient's ECC key pair
    EC_KEY* recipientKey = EC_KEY_new_by_curve_name(NID_secp256k1);
    if (recipientKey == NULL) {
        handleErrors();
    }

    if (EC_KEY_generate_key(recipientKey) != 1) {
        handleErrors();
    }

    // String to encrypt
    const char* message = "Hello, ECC encryption!";

    // Encrypt the string
    encryptString(message, recipientKey);

    // Clean up
    EC_KEY_free(recipientKey);

    return 0;
}

""";

  static const String code_80 = r"""
 #include <stdio.h>
#include <ctype.h>

void removeNonAlphanumeric(char* str) {
    if (str == NULL)
        return;

    int i, j;
    for (i = 0, j = 0; str[i] != '\0'; i++) {
        if (isalnum((unsigned char)str[i])) {
            str[j] = str[i];
            j++;
        }
    }
    str[j] = '\0';
}

int main() {
    char str[] = "Hello,123 World!$#";
    
    printf("Original string: %s\n", str);

    removeNonAlphanumeric(str);

    printf("String after removing non-alphanumeric characters: %s\n", str);

    return 0;
}

""";

  // done

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
String: This is a sample string
Longest word: sample


""";

  static const String code_op_22 = """
Original string: Hello, World!
Modified string: Hell*, W*rld!

""";

  static const String code_op_23 = """
Original string: AAABBBCCCDDDD
Compressed string: A3B3C3D4

""";

  static const String code_op_24 = """
Compressed string: A3B3C3D4
Decompressed string: AAABBBCCCDDDD


""";

  static const String code_op_25 = """
Text: ABABDABACDABABCABAB
Pattern: ABABCABAB
Pattern found at index 10

""";

  static const String code_op_26 = """
tionrota is a rotation of rotation

""";

  static const String code_op_27 = """
Original string: This is a long string that needs to be truncated
Truncated string: This is a long string

""";

  static const String code_op_28 = """
Original string: Hello World!
Encoded string: Hello+World%21
Decoded string: Hello World!

""";

  static const String code_op_29 = """
Encoded data: SGVsbG8sIFdvcmxkIQ==
Decoded data: Hello, World!


""";

  static const String code_op_30 = """
Original string: HELLO WORLD
Morse code: .... . .-.. .-.. ---   .-- --- .-. .-.. -..


""";

  static const String code_op_31 = """
Enter a string: Hello, World!
Enter the encryption key (0-25): 3
Encrypted string: Khoor, Zruog!


""";

  static const String code_op_32 = """
Enter the encrypted string: Khoor, Zruog!
Enter the decryption key (0-25): 3
Decrypted string: Hello, World!


""";

  static const String code_op_33 = """
Enter the length of the random string: 8
Random string: PAFZLHQI

""";

  static const String code_op_34 = """
String: Hello, World!
Hash value: 17645123091956130787


""";

  static const String code_op_35 = """
String: Hello, World!
Binary representation: 01001000 01100101 01101100 01101100 01101111 00101100 00100000 01010111 01101111 01110010 01101100 01100100 00100001


""";

  static const String code_op_36 = """
Binary representation: 01001000 01100101 01101100 01101100 01101111 00101100 00100000 01010111 01101111 01110010 01101100 01100100 00100001
String: Hello, World!


""";

  static const String code_op_37 = """
String: Hello,World,How,Are,You
Delimiter: ,
Substrings:
Hello
World
How
Are
You

""";

  static const String code_op_38 = """
Original sentence: Hello, how are you today?
Reversed sentence: today? you are how Hello,


""";

  static const String code_op_39 = """
Original string: AAABBBCCCCDDDD
Compressed string: A3B3C4D4

""";

  static const String code_op_40 = """
String 1: abcdefg
String 1 contains only unique characters
String 2: hello
String 2 does not contain only unique characters

""";

  // done

  static const String code_op_41 = """
Enter the first string: hello
Enter the second string: olleh
The second string is a rotation of the first string.

""";

  static const String code_op_42 = """
Enter a string: Hello, World!
The most frequent character in the string is 'l'.

""";

  static const String code_op_43 = """
Enter a sentence: This is a sample sentence.
Number of words in the sentence: 5

""";

  static const String code_op_44 = """
Enter a string: ABC
Permutations of the string:
ABC
ACB
BAC
BCA
CBA
CAB

""";

  static const String code_op_45 = """
Enter a string: The quick brown fox jumps over the lazy dog.
The string is a pangram.


""";

  static const String code_op_46 = """
Enter a string: Hello
Enter the target length: 10
Padded string: Hello     


""";

  static const String code_op_47 = """
Enter a string: Hello, World!
String without punctuation: Hello World


""";

  static const String code_op_48 = """
Enter a string: Hello World!
Compressed string: 1100100110100100111111000100110101000011101


""";

  static const String code_op_49 = """
Enter an email address: john.doe@example
Invalid email address.


""";

  static const String code_op_50 = """
Enter the first string: ABCDGH
Enter the second string: AEDFHR
The longest common subsequence is: ADH

""";

  // done

  static const String code_op_51 = """
Enter a string: Hello World!

Character Frequency
H    1
W    1
d    1
e    1
l    3
o    2
r    1

""";

  static const String code_op_52 = """
Enter a string: Hello, World. How are you?

Tokens:
Hello
World
How
are
you

""";

  static const String code_op_53 = """
Enter a string: hello world! how are you?

Title Case: Hello World! How Are You?

""";

  static const String code_op_54 = """
Enter a string:   Hello, World!   

String without leading/trailing whitespace: Hello, World!

""";

  static const String code_op_55 = """
Enter the length of the password: 10
Random Password: T4G7mNpkEq

""";

  static const String code_op_56 = """
Enter a string: Hello world! Hello hello!
Enter the substring to find: Hello
Enter the replacement substring: Hi

Modified string: Hi world! Hi hi!

""";

  static const String code_op_57 = """
Enter a string: hello world, how are you?

CamelCase: helloWorld,HowAreYou?

""";

  static const String code_op_58 = """
Enter a string: abcd

No second most frequent character found.


""";

  static const String code_op_59 = """
Encrypted Message: 6B A1 3F 9E C8 41 6D 2F 19 D7 25 8C 12 58 C2 33 8B C7 0A 92 2D 96 11 E8 57 91 08 F9 73 5E 7B 41 78 C6 E9 06 68 87 A6 84 D6 F5 0C 64 78 C6 61 3C 42 60 5F 17 51 F4 9F D3 06 72 E9 1A F4 F1 F4 B9 0B 5F 2E 60 5A 56 67 5A 5B F1 A4 41 C1 0E 6A 2D 1A 8C 3D B4 A6 79 91 1B 02 05 53 47 E1 68 51 D1 A0 C5 64 9D 5D 29 14 6A 01 A2 3B 23 8A 57 B5 E6 C7 F7 A0 68 2B 6B 89 1F A1 C7 0A 47 0A 10 A9 97 67 68 B5 99 67 2D A9 44 E0 6F F2 0E C4 5B F6 71 51 68 75 C2 F7 4A C9 82 32 4F 7B 22 A4 79 C0 B7 C7 A2 17 C9 3E 20 D7 C4 62 BA 0A 3D 55 07 D7 85 6C E0 85 92 B3 5C A1 C4 6A B7 A2 82 6A 5D 36 F5 88 6C 26 7B 5C 0C 4D 92 46 9F 99 E9 89 26 1A 76 B2 18 70 B1 1E C0 0D 7C D6 A2 6A D5 C1 7B D5 7A 3E 7E 72 34 D9 C1 2B 8C A2 BC 7E C5 F1 A7 4B E5 6A D4 B3 B0 C2 9B 6A 3B 63 E9 E2 E1 1D 38 E5 72 4E 7B F0 C2 79 C0 89 53 F6 0E 01 09 74 33 13 2A 1A

""";

  static const String code_op_60 = """
Enter a string: Hello, World!

.... . .-.. .-.. --- --..-- / .-- --- .-. .-.. -.. -.-.--

""";

  static const String code_op_61 = """
Search Results:
Apple: Found
Banana: Found
Car: Found
Carrot: Found
Dog: Not Found
After Deleting 'banana':
Banana: Not Found

""";

  static const String code_op_62 = """
Input String: ABABABAABBABAABAAAABABBBAB
Compressed String: 65 66 256 257 66 259 260 262 259 64 66 67

""";

  static const String code_op_63 = """
Enter a string: hello world this is pig latin
ellohay orldway histay isay igpay atinlay


""";

  static const String code_op_64 = """
Encrypted String: b8ee9d06d64a93d3d83a

""";

  static const String code_op_65 = """
Stack Contents: o l l e H
Top Element: o
Popped Element: o
Stack Contents: l l e H

""";

  static const String code_op_66 = """
Smallest substring containing all characters: abbc

""";

  static const String code_op_67 = """
Compressed string: annb\$aa
Decompressed string: banana


""";

  static const String code_op_68 = """
Roman numeral representation of 3549 is: MMMDXLIX


""";

  static const String code_op_69 = """
Longest palindromic substring: bab

""";

  static const String code_op_70 = """
Original string: Hello, World!
Shared key: 8
Encrypted string: ]6WW^3;W6\_
Decrypted string: Hello, World!

""";

  // done

  static const String code_op_71 = """
Enter a string with HTML tags: <h1>Hello, <i>World</i>!</h1>
String after removing HTML tags: Hello, World!


""";

  static const String code_op_72 = """
Enter a string: 123456
BCD representation: 12 34 56

""";

  static const String code_op_73 = """
Queue elements:
Apple
Banana
Cherry
Dequeued element: Apple
Queue elements:
Banana
Cherry
Queue elements:
Banana
Cherry
Date

""";

  static const String code_op_74 = """
Enter a string: This is a sample string. This string has some repeated words like sample, string, and string.
Most frequent word: string


""";

  static const String code_op_75 = """
Enter a string to compress: Hello, Arithmetic Coding!
Compressed string: 0011000101110011101010010100111001100100111001110101111001111100011100110100101101110100111001101011110111111010001100110111011001011010100101011101110110111110011001010110101101111110


""";

  static const String code_op_76 = """
Enter a string: ABCDEFGH
Gray code: AKBKCMEMGOIOKQ



""";

  static const String code_op_77 = """
Linked List: Hello World Linked List


""";

  static const String code_op_78 = """
Enter an IPv4 address: 192.168.0.1
Valid IPv4 address.

""";

  static const String code_op_79 = """
Encrypted message: 6b2eeeb0de228126960b392ae125811e9abf2b13f1d43a2f60cc38e8808d1e08


""";

  static const String code_op_80 = """
Original string: Hello,123 World!\$#
String after removing non-alphanumeric characters: Hello123World


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
