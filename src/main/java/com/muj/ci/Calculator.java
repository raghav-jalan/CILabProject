package com.muj.ci;

/**
 * Simple Calculator class with basic arithmetic operations
 */
public class Calculator {

    /**
     * Adds two numbers
     */
    public int add(int a, int b) {
        return a + b;
    }

    /**
     * Subtracts second number from first
     */
    public int subtract(int a, int b) {
        return a - b;
    }

    /**
     * Multiplies two numbers
     */
    public int multiply(int a, int b) {
        return a * b;
    }

    /**
     * Divides first number by second
     * 
     * @throws ArithmeticException if division by zero
     */
    public double divide(int a, int b) {
        if (b == 0) {
            throw new ArithmeticException("Cannot divide by zero");
        }
        return (double) a / b;
    }

    /**
     * Returns the square of a number
     */
    public int square(int a) {
        return a * a;
    }
}
