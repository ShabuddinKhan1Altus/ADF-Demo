# Databricks notebook source

# Define a function for addition
def add(x, y):
    return x + y

# Define a function for subtraction
def subtract(x, y):
    return x - y

# Define a function for multiplication
def multiply(x, y):
    return x * y

# Define a function for division
def divide(x, y):
    if y != 0:
        return x / y
    else:
        return "Cannot divide by zero"

# Main function to perform operations
def main():
    num1 = 10
    num2 = 5

    print(f"Addition of {num1} and {num2}: {add(num1, num2)}")
    print(f"Subtraction of {num1} and {num2}: {subtract(num1, num2)}")
    # print(f"Multiplication of {num1} and {num2}: {multiply(num1, num2)}")
    # # print(f"Division of {num1} and {num2}: {divide(num1, num2)}")

# Call the main function
if __name__ == "__main__":
    main()
