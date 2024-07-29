#include <stdio.h>

// Function prototypes
void add(int a, int b);
void subtract(int a, int b);
void multiply(int a, int b);
void divide(int a, int b);

int main() {
    int a, b;
    int choice;

    // Display menu
    printf("Simple ALU Operations Menu:\n");
    printf("1. Addition\n");
    printf("2. Subtraction\n");
    printf("3. Multiplication\n");
    printf("4. Division\n");
    printf("Enter your choice (1-4): ");
    scanf("%d", &choice);

    // Get the operands from the user
    printf("Enter two integers:\n");
    scanf("%d %d", &a, &b);

    // Perform the operation based on user choice
    switch (choice) {
        case 1:
            add(a, b);
            break;
        case 2:
            subtract(a, b);
            break;
        case 3:
            multiply(a, b);
            break;
        case 4:
            divide(a, b);
            break;
        default:
            printf("Invalid choice!\n");
            break;
    }

    return 0;
}

void add(int a, int b) {
    printf("Result of addition: %d\n", a + b);
}

void subtract(int a, int b) {
    printf("Result of subtraction: %d\n", a - b);
}

void multiply(int a, int b) {
    printf("Result of multiplication: %d\n", a * b);
}

void divide(int a, int b) {
    if (b != 0) {
        printf("Result of division: %.2f\n", (float)a / b);
    } else {
        printf("Error: Division by zero is not allowed.\n");
    }
}
