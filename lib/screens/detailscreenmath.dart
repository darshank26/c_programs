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

typedef struct {
    float real;
    float imag;
} Complex;

Complex addComplex(Complex num1, Complex num2) {
    Complex sum;

    sum.real = num1.real + num2.real;
    sum.imag = num1.imag + num2.imag;

    return sum;
}

int main() {
    Complex num1, num2, sum;

    // Input first complex number
    printf("Enter the real and imaginary parts of the first complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num1.real);
    printf("Imaginary Part: ");
    scanf("%f", &num1.imag);

    // Input second complex number
    printf("\nEnter the real and imaginary parts of the second complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num2.real);
    printf("Imaginary Part: ");
    scanf("%f", &num2.imag);

    // Add the complex numbers
    sum = addComplex(num1, num2);

    // Display the result
    printf("\nSum = %.2f + %.2fi\n", sum.real, sum.imag);

    return 0;
}

""";

  static const String code_2 = r"""

#include <stdio.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex subtractComplex(Complex num1, Complex num2) {
    Complex diff;

    diff.real = num1.real - num2.real;
    diff.imag = num1.imag - num2.imag;

    return diff;
}

int main() {
    Complex num1, num2, diff;

    // Input first complex number
    printf("Enter the real and imaginary parts of the first complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num1.real);
    printf("Imaginary Part: ");
    scanf("%f", &num1.imag);

    // Input second complex number
    printf("\nEnter the real and imaginary parts of the second complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num2.real);
    printf("Imaginary Part: ");
    scanf("%f", &num2.imag);

    // Subtract the complex numbers
    diff = subtractComplex(num1, num2);

    // Display the result
    printf("\nDifference = %.2f + %.2fi\n", diff.real, diff.imag);

    return 0;
}


""";

  static const String code_3 = r"""

#include <stdio.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex multiplyComplex(Complex num1, Complex num2) {
    Complex product;

    product.real = (num1.real * num2.real) - (num1.imag * num2.imag);
    product.imag = (num1.real * num2.imag) + (num1.imag * num2.real);

    return product;
}

int main() {
    Complex num1, num2, product;

    // Input first complex number
    printf("Enter the real and imaginary parts of the first complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num1.real);
    printf("Imaginary Part: ");
    scanf("%f", &num1.imag);

    // Input second complex number
    printf("\nEnter the real and imaginary parts of the second complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num2.real);
    printf("Imaginary Part: ");
    scanf("%f", &num2.imag);

    // Multiply the complex numbers
    product = multiplyComplex(num1, num2);

    // Display the result
    printf("\nProduct = %.2f + %.2fi\n", product.real, product.imag);

    return 0;
}


""";

  static const String code_4 = r"""

#include <stdio.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex divideComplex(Complex num1, Complex num2) {
    Complex quotient;

    float denominator = (num2.real * num2.real) + (num2.imag * num2.imag);

    quotient.real = ((num1.real * num2.real) + (num1.imag * num2.imag)) / denominator;
    quotient.imag = ((num1.imag * num2.real) - (num1.real * num2.imag)) / denominator;

    return quotient;
}

int main() {
    Complex num1, num2, quotient;

    // Input first complex number
    printf("Enter the real and imaginary parts of the first complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num1.real);
    printf("Imaginary Part: ");
    scanf("%f", &num1.imag);

    // Input second complex number
    printf("\nEnter the real and imaginary parts of the second complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num2.real);
    printf("Imaginary Part: ");
    scanf("%f", &num2.imag);

    // Divide the complex numbers
    quotient = divideComplex(num1, num2);

    // Display the result
    printf("\nQuotient = %.2f + %.2fi\n", quotient.real, quotient.imag);

    return 0;
}



""";

  static const String code_5 = r"""

#include <stdio.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex conjugateComplex(Complex num) {
    Complex conjugate;

    conjugate.real = num.real;
    conjugate.imag = -num.imag;

    return conjugate;
}

int main() {
    Complex num, conjugate;

    // Input complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);

    // Find the conjugate of the complex number
    conjugate = conjugateComplex(num);

    // Display the result
    printf("\nConjugate = %.2f + %.2fi\n", conjugate.real, conjugate.imag);

    return 0;
}




""";

  static const String code_6 = r"""
#include <stdio.h>
#include <math.h>

typedef struct {
    float real;
    float imag;
} Complex;

float absoluteValueComplex(Complex num) {
    float absolute;

    absolute = sqrt(num.real * num.real + num.imag * num.imag);

    return absolute;
}

int main() {
    Complex num;
    float absoluteValue;

    // Input complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);

    // Find the absolute value of the complex number
    absoluteValue = absoluteValueComplex(num);

    // Display the result
    printf("\nAbsolute Value = %.2f\n", absoluteValue);

    return 0;
}



""";

  static const String code_7 = r"""

#include <stdio.h>
#include <math.h>

typedef struct {
    float real;
    float imag;
} Complex;

float argumentComplex(Complex num) {
    float argument;

    argument = atan2(num.imag, num.real);

    return argument;
}

int main() {
    Complex num;
    float argument;

    // Input complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);

    // Find the argument (phase) of the complex number
    argument = argumentComplex(num);

    // Display the result in degrees
    printf("\nArgument (Phase) = %.2f degrees\n", argument * 180 / M_PI);

    return 0;
}



""";

  static const String code_8 = r"""
#include <stdio.h>
#include <math.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex complexExp(Complex num) {
    Complex result;
    float expReal, expImag;

    expReal = exp(num.real);
    expImag = num.imag;

    result.real = expReal * cos(expImag);
    result.imag = expReal * sin(expImag);

    return result;
}

int main() {
    Complex num, result;

    // Input complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);

    // Compute the exponential function of the complex number
    result = complexExp(num);

    // Display the result
    printf("\nExponential Function: %.2f + %.2fi\n", result.real, result.imag);

    return 0;
}

""";

  static const String code_9 = r"""

#include <stdio.h>
#include <math.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex complexLog(Complex num) {
    Complex result;
    float magnitude, argument;

    magnitude = sqrt(num.real * num.real + num.imag * num.imag);
    argument = atan2(num.imag, num.real);

    result.real = log(magnitude);
    result.imag = argument;

    return result;
}

int main() {
    Complex num, result;

    // Input complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);

    // Compute the logarithm of the complex number
    result = complexLog(num);

    // Display the result
    printf("\nLogarithm: %.2f + %.2fi\n", result.real, result.imag);

    return 0;
}



""";

  static const String code_10 = r"""

#include <stdio.h>
#include <math.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex complexSqrt(Complex num) {
    Complex result;
    float magnitude, argument;

    magnitude = sqrt(num.real * num.real + num.imag * num.imag);
    argument = atan2(num.imag, num.real);

    result.real = sqrt(magnitude) * cos(argument / 2);
    result.imag = sqrt(magnitude) * sin(argument / 2);

    return result;
}

int main() {
    Complex num, result;

    // Input complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);

    // Compute the square root of the complex number
    result = complexSqrt(num);

    // Display the result
    printf("\nSquare Root: %.2f + %.2fi\n", result.real, result.imag);

    return 0;
}




""";

  // done

  static const String code_11 = r"""

#include <stdio.h>
#include <math.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex complexSin(Complex num) {
    Complex result;
    float expReal, expImag;

    expReal = exp(num.imag);
    expImag = -num.real;

    result.real = (expReal * sin(num.real)) * cosh(num.imag);
    result.imag = (expReal * cos(num.real)) * sinh(num.imag);

    return result;
}

Complex complexCos(Complex num) {
    Complex result;
    float expReal, expImag;

    expReal = exp(num.imag);
    expImag = -num.real;

    result.real = (expReal * cos(num.real)) * cosh(num.imag);
    result.imag = (-expReal * sin(num.real)) * sinh(num.imag);

    return result;
}

Complex complexTan(Complex num) {
    Complex result;

    result = complexSin(num);
    result = complexDiv(result, complexCos(num));

    return result;
}

int main() {
    Complex num, sinVal, cosVal, tanVal;

    // Input complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);

    // Compute the trigonometric functions of the complex number
    sinVal = complexSin(num);
    cosVal = complexCos(num);
    tanVal = complexTan(num);

    // Display the results
    printf("\nSine: %.2f + %.2fi\n", sinVal.real, sinVal.imag);
    printf("Cosine: %.2f + %.2fi\n", cosVal.real, cosVal.imag);
    printf("Tangent: %.2f + %.2fi\n", tanVal.real, tanVal.imag);

    return 0;
}




""";

  static const String code_12 = r"""
#include <stdio.h>
#include <math.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex complexSinh(Complex num) {
    Complex result;
    float expReal, expImag;

    expReal = exp(num.real);
    expImag = num.imag;

    result.real = (expReal * sinh(num.imag)) * cos(num.real);
    result.imag = (expReal * cosh(num.imag)) * sin(num.real);

    return result;
}

Complex complexCosh(Complex num) {
    Complex result;
    float expReal, expImag;

    expReal = exp(num.real);
    expImag = num.imag;

    result.real = (expReal * cosh(num.imag)) * cos(num.real);
    result.imag = (expReal * sinh(num.imag)) * sin(num.real);

    return result;
}

Complex complexTanh(Complex num) {
    Complex result;

    result = complexSinh(num);
    result = complexDiv(result, complexCosh(num));

    return result;
}

int main() {
    Complex num, sinhVal, coshVal, tanhVal;

    // Input complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);

    // Compute the hyperbolic functions of the complex number
    sinhVal = complexSinh(num);
    coshVal = complexCosh(num);
    tanhVal = complexTanh(num);

    // Display the results
    printf("\nHyperbolic Sine: %.2f + %.2fi\n", sinhVal.real, sinhVal.imag);
    printf("Hyperbolic Cosine: %.2f + %.2fi\n", coshVal.real, coshVal.imag);
    printf("Hyperbolic Tangent: %.2f + %.2fi\n", tanhVal.real, tanhVal.imag);

    return 0;
}


""";

  static const String code_13 = r"""

#include <stdio.h>
#include <math.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex complexPow(Complex num, int power) {
    Complex result;

    float magnitude = sqrt(num.real * num.real + num.imag * num.imag);
    float angle = atan2(num.imag, num.real);

    float newMagnitude = pow(magnitude, power);
    float newAngle = angle * power;

    result.real = newMagnitude * cos(newAngle);
    result.imag = newMagnitude * sin(newAngle);

    return result;
}

int main() {
    Complex num, result;
    int power;

    // Input complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);

    // Input power
    printf("Enter the power: ");
    scanf("%d", &power);

    // Compute the power of the complex number
    result = complexPow(num, power);

    // Display the result
    printf("\nResult: %.2f + %.2fi\n", result.real, result.imag);

    return 0;
}



""";

  static const String code_14 = r"""
#include <stdio.h>
#include <math.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex complexLog(Complex num) {
    Complex result;

    result.real = log(sqrt(num.real * num.real + num.imag * num.imag));
    result.imag = atan2(num.imag, num.real);

    return result;
}

int main() {
    Complex num, result;

    // Input complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);

    // Compute the logarithm of the complex number
    result = complexLog(num);

    // Display the result
    printf("\nResult: %.2f + %.2fi\n", result.real, result.imag);

    return 0;
}


""";

  static const String code_15 = r"""
#include <stdio.h>
#include <math.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex rectToPolar(Complex num) {
    Complex result;
    
    result.real = sqrt(num.real * num.real + num.imag * num.imag);
    result.imag = atan2(num.imag, num.real);
    
    return result;
}

Complex polarToRect(Complex num) {
    Complex result;
    
    result.real = num.real * cos(num.imag);
    result.imag = num.real * sin(num.imag);
    
    return result;
}

int main() {
    Complex num, result;
    int choice;
    
    // Input complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);
    
    // Conversion menu
    printf("\nChoose the conversion:\n");
    printf("1. Rectangular to Polar\n");
    printf("2. Polar to Rectangular\n");
    printf("Choice: ");
    scanf("%d", &choice);
    
    // Perform the conversion
    switch (choice) {
        case 1:
            result = rectToPolar(num);
            printf("\nResult: Magnitude = %.2f, Angle = %.2f radians\n", result.real, result.imag);
            break;
        case 2:
            result = polarToRect(num);
            printf("\nResult: Real Part = %.2f, Imaginary Part = %.2f\n", result.real, result.imag);
            break;
        default:
            printf("Invalid choice!\n");
            break;
    }
    
    return 0;
}


""";

  // done

  static const String code_16 = r"""
#include <stdio.h>
#include <math.h>

typedef struct {
    float magnitude;
    float phase;
} Polar;

typedef struct {
    float real;
    float imag;
} Complex;

void convertToRectangular(Polar polar, Complex *num) {
    num->real = polar.magnitude * cos(polar.phase);
    num->imag = polar.magnitude * sin(polar.phase);
}

int main() {
    Polar polar;
    Complex num;
    
    // Input polar coordinates
    printf("Enter the magnitude and phase (in radians) of the complex number:\n");
    printf("Magnitude: ");
    scanf("%f", &polar.magnitude);
    printf("Phase: ");
    scanf("%f", &polar.phase);
    
    // Convert to rectangular form
    convertToRectangular(polar, &num);
    
    // Display the rectangular coordinates
    printf("\nRectangular Coordinates: Real Part = %.2f, Imaginary Part = %.2f\n", num.real, num.imag);
    
    return 0;
}

""";

  static const String code_17 = r"""
#include <stdio.h>
#include <math.h>

typedef struct {
    float real;
    float imag;
} Complex;

typedef struct {
    float magnitude;
    float phase;
} Polar;

void convertToPolar(Complex num, Polar *polar) {
    polar->magnitude = sqrt(num.real * num.real + num.imag * num.imag);
    polar->phase = atan2(num.imag, num.real);
}

int main() {
    Complex num;
    Polar polar;
    
    // Input rectangular coordinates
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);
    
    // Convert to polar form
    convertToPolar(num, &polar);
    
    // Display the polar coordinates
    printf("\nPolar Coordinates: Magnitude = %.2f, Phase = %.2f radians\n", polar.magnitude, polar.phase);
    
    return 0;
}


""";

  static const String code_18 = r"""
#include <stdio.h>

typedef struct {
    float real;
    float imag;
} Complex;

void extractParts(Complex num, float *realPart, float *imagPart) {
    *realPart = num.real;
    *imagPart = num.imag;
}

int main() {
    Complex num;
    float realPart, imagPart;
    
    // Input the complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);
    
    // Extract the real and imaginary parts
    extractParts(num, &realPart, &imagPart);
    
    // Display the extracted parts
    printf("\nReal Part: %.2f\n", realPart);
    printf("Imaginary Part: %.2f\n", imagPart);
    
    return 0;
}


""";

  static const String code_19 = r"""

#include <stdio.h>

typedef struct {
    float real;
    float imag;
} Complex;

void conjugate(Complex *num) {
    num->imag = -num->imag;
}

int main() {
    Complex num;
    
    // Input the complex number
    printf("Enter the real and imaginary parts of the complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num.real);
    printf("Imaginary Part: ");
    scanf("%f", &num.imag);
    
    // Calculate the complex conjugate
    conjugate(&num);
    
    // Display the complex conjugate
    printf("\nComplex Conjugate: %.2f + %.2fi\n", num.real, num.imag);
    
    return 0;
}


""";

  static const String code_20 = r"""
#include <stdio.h>

typedef struct {
    float real;
    float imag;
} Complex;

Complex add(Complex num1, Complex num2) {
    Complex result;
    result.real = num1.real + num2.real;
    result.imag = num1.imag + num2.imag;
    return result;
}

Complex subtract(Complex num1, Complex num2) {
    Complex result;
    result.real = num1.real - num2.real;
    result.imag = num1.imag - num2.imag;
    return result;
}

Complex multiply(Complex num1, Complex num2) {
    Complex result;
    result.real = (num1.real * num2.real) - (num1.imag * num2.imag);
    result.imag = (num1.real * num2.imag) + (num1.imag * num2.real);
    return result;
}

int main() {
    Complex num1, num2, sum, difference, product;
    
    // Input the first complex number
    printf("Enter the real and imaginary parts of the first complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num1.real);
    printf("Imaginary Part: ");
    scanf("%f", &num1.imag);
    
    // Input the second complex number
    printf("\nEnter the real and imaginary parts of the second complex number:\n");
    printf("Real Part: ");
    scanf("%f", &num2.real);
    printf("Imaginary Part: ");
    scanf("%f", &num2.imag);
    
    // Perform complex number operations
    sum = add(num1, num2);
    difference = subtract(num1, num2);
    product = multiply(num1, num2);
    
    // Display the results
    printf("\nSum: %.2f + %.2fi\n", sum.real, sum.imag);
    printf("Difference: %.2f + %.2fi\n", difference.real, difference.imag);
    printf("Product: %.2f + %.2fi\n", product.real, product.imag);
    
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
Enter the real and imaginary parts of the first complex number:
Real Part: 2.5
Imaginary Part: 3.7

Enter the real and imaginary parts of the second complex number:
Real Part: -1.2
Imaginary Part: 0.8

Sum = 1.30 + 4.50i

""";

  static const String code_op_2 = """
Enter the real and imaginary parts of the first complex number:
Real Part: 4.2
Imaginary Part: 3.5

Enter the real and imaginary parts of the second complex number:
Real Part: 1.8
Imaginary Part: 2.3

Difference = 2.40 + 1.20i

""";

  static const String code_op_3 = """
Enter the real and imaginary parts of the first complex number:
Real Part: 2.3
Imaginary Part: 1.5

Enter the real and imaginary parts of the second complex number:
Real Part: -1.8
Imaginary Part: 3.2

Product = -6.21 + 1.95i

""";

  static const String code_op_4 = """
Enter the real and imaginary parts of the first complex number:
Real Part: 3.5
Imaginary Part: 2.4

Enter the real and imaginary parts of the second complex number:
Real Part: 1.8
Imaginary Part: -0.9

Quotient = 1.29 + 1.21i

""";

  static const String code_op_5 = """
Enter the real and imaginary parts of the complex number:
Real Part: 2.3
Imaginary Part: 1.8

Conjugate = 2.30 - 1.80i

""";


  static const String code_op_6 = """
  
Enter the real and imaginary parts of the complex number:
Real Part: 2.3
Imaginary Part: 1.8

Absolute Value = 2.99

""";

  static const String code_op_7 = """
  
Enter the real and imaginary parts of the complex number:
Real Part: -1.2
Imaginary Part: 0.8

Argument (Phase) = 146.31 degrees

""";

  static const String code_op_8 = """
Enter the real and imaginary parts of the complex number:
Real Part: 1.2
Imaginary Part: 0.8

Exponential Function: 1.82 + 1.11i

""";

  static const String code_op_9 = """
Enter the real and imaginary parts of the complex number:
Real Part: 1.2
Imaginary Part: 0.8

Logarithm: 0.59 + 0.64i

""";

  static const String code_op_10 = """
Enter the real and imaginary parts of the complex number:
Real Part: 4.0
Imaginary Part: 3.0

Square Root: 2.04 + 1.18i


""";


  // done

  static const String code_op_11 = """
Enter the real and imaginary parts of the complex number:
Real Part: 1.0
Imaginary Part: 2.0

Sine: 3.17 + 1.53i
Cosine: 2.03 - 0.41i
Tangent: 0.95 + 1.63i


""";

  static const String code_op_12 = """

Enter the real and imaginary parts of the complex number:
Real Part: 1.0
Imaginary Part: 2.0

Hyperbolic Sine: 1.81 + 0.99i
Hyperbolic Cosine: 1.58 + 0.42i
Hyperbolic Tangent: 1.15 + 1.49i

""";

  static const String code_op_13 = """
Enter the real and imaginary parts of the complex number:
Real Part: 2.0
Imaginary Part: 3.0
Enter the power: 3

Result: -46.00 + 9.00i

""";

  static const String code_op_14 = """
Enter the real and imaginary parts of the complex number:
Real Part: 2.0
Imaginary Part: 3.0

Result: 1.47 + 0.98i

""";

  static const String code_op_15 = """
Enter the real and imaginary parts of the complex number:
Real Part: 3.0
Imaginary Part: 4.0

Choose the conversion:
1. Rectangular to Polar
2. Polar to Rectangular
Choice: 1

Result: Magnitude = 5.00, Angle = 0.93 radians


""";

  // done

  static const String code_op_16 = """
Enter the magnitude and phase (in radians) of the complex number:
Magnitude: 4.46
Phase: 0.65

Rectangular Coordinates: Real Part = 3.50, Imaginary Part = 2.80

""";

  static const String code_op_17 = """
Enter the real and imaginary parts of the complex number:
Real Part: 3.5
Imaginary Part: 2.8

Polar Coordinates: Magnitude = 4.46, Phase = 0.65 radians


""";

  static const String code_op_18 = """
Enter the real and imaginary parts of the complex number:
Real Part: 3.5
Imaginary Part: 2.8

Real Part: 3.50
Imaginary Part: 2.80

""";

  static const String code_op_19 = """
Enter the real and imaginary parts of the complex number:
Real Part: 3.5
Imaginary Part: 2.8

Complex Conjugate: 3.50 - 2.80i

""";

  static const String code_op_20 = """
Enter the real and imaginary parts of the first complex number:
Real Part: 3.5
Imaginary Part: 2.8

Enter the real and imaginary parts of the second complex number:
Real Part: 1.2
Imaginary Part: -0.7

Sum: 4.70 + 2.10i
Difference: 2.30 + 3.50i
Product: 5.60 + 6.40i

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
