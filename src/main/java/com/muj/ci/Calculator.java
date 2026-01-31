package com.muj.ci;

public class Calculator {
    
    public static void main(String[] args) {
        System.out.println("Calculator App Started...");
        Calculator calc = new Calculator();
        System.out.println("2 + 3 = " + calc.add(2, 3));
    }

    public int add(int a, int b) {
        return a + b;
    }

    public int subtract(int a, int b) {
        return a - b;
    }

    public int multiply(int a, int b) {
        return a * b;
    }

    public int divide(int a, int b) {
        if (b == 0) {
            throw new IllegalArgumentException("Cannot divide by zero");
        }
        return a / b;
    }
}