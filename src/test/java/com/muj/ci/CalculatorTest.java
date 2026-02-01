package com.muj.ci;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeEach;
import static org.junit.jupiter.api.Assertions.*;

/**
 * Test class for Calculator
 */
public class CalculatorTest {

    private Calculator calculator;

    @BeforeEach
    public void setUp() {
        calculator = new Calculator();
    }

    @Test
    public void testAdd() {
        assertEquals(10, calculator.add(5, 5));
        assertEquals(0, calculator.add(-5, 5));
        assertEquals(-10, calculator.add(-5, -5));
    }

    @Test
    public void testSubtract() {
        assertEquals(5, calculator.subtract(10, 5));
        assertEquals(-5, calculator.subtract(5, 10));
        assertEquals(0, calculator.subtract(5, 5));
    }

    @Test
    public void testMultiply() {
        assertEquals(25, calculator.multiply(5, 5));
        assertEquals(-25, calculator.multiply(-5, 5));
        assertEquals(0, calculator.multiply(0, 5));
    }

    @Test
    public void testDivide() {
        assertEquals(2.0, calculator.divide(10, 5), 0.001);
        assertEquals(2.5, calculator.divide(5, 2), 0.001);
        assertEquals(-2.0, calculator.divide(-10, 5), 0.001);
    }

    @Test
    public void testDivideByZero() {
        assertThrows(ArithmeticException.class, () -> {
            calculator.divide(10, 0);
        });
    }

    @Test
    public void testSquare() {
        assertEquals(25, calculator.square(5));
        assertEquals(25, calculator.square(-5));
        assertEquals(0, calculator.square(0));
    }
}
