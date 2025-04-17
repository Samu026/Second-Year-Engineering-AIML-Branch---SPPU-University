#include <stdio.h>
#include <math.h>

// Function to convert degrees to radians
float degreesToRadians(float degrees) {
    return degrees * M_PI / 180.0;
}

// Function to perform rotation on a 2D object around an arbitrary point
void rotateObject(float object[][2], int size, float angle, float pivotX, float pivotY) {
    int i;

    // Convert the rotation angle from degrees to radians
    float theta = degreesToRadians(angle);

    // Perform rotation on each point of the object
    for (i = 0; i < size; i++) {
        float x = object[i][0] - pivotX;
        float y = object[i][1] - pivotY;

        object[i][0] = (x * cos(theta)) - (y * sin(theta)) + pivotX;
        object[i][1] = (x * sin(theta)) + (y * cos(theta)) + pivotY;
    }
}

// Function to display the object
void displayObject(float object[][2], int size) {
    int i;

    // Displaying each point of the object
    for (i = 0; i < size; i++) {
        printf("(%.2f, %.2f)\n", object[i][0], object[i][1]);
    }
}

int main() {
    // Define the object (triangle)
    float object[][2] = {{0.0, 0.0}, {1.0, 0.0}, {0.5, 1.0}};
    int size = sizeof(object) / sizeof(object[0]);

    // Display the original object
    printf("Original object:\n");
    displayObject(object, size);
    printf("\n");

    // Get the rotation angle and the coordinates of the pivot point from the user
    float angle, pivotX, pivotY;
    printf("Enter the rotation angle (in degrees): ");
    scanf("%f", &angle);
    printf("Enter the x-coordinate of the pivot point: ");
    scanf("%f", &pivotX);
    printf("Enter the y-coordinate of the pivot point: ");
    scanf("%f", &pivotY);

    // Rotate the object around the user-provided pivot point and angle
    rotateObject(object, size, angle, pivotX, pivotY);

    // Display the rotated object
    printf("Rotated object:\n");
    displayObject(object, size);

    return 0;
}

 
