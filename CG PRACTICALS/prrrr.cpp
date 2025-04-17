#include <iostream>
#include <vector>

// Define the size of the screen
const int WIDTH = 10;
const int HEIGHT = 10;

// Flood fill function (prototype)
void floodFill(std::vector<std::vector<int>>& screen, int x, int y, int newColor, int oldColor);

// Print the screen
void printScreen(const std::vector<std::vector<int>>& screen) {
    for (int i = 0; i < WIDTH; i++) {
        for (int j = 0; j < HEIGHT; j++) {
            std::cout << screen[i][j] << " ";
        }
        std::cout << std::endl;
    }
}

// Flood fill function
void floodFill(std::vector<std::vector<int>>& screen, int x, int y, int newColor, int oldColor) {
    // Base cases
    if (x < 0 || x >= WIDTH || y < 0 || y >= HEIGHT)
        return;
    if (screen[x][y] != oldColor)
        return;

    // Update the color
    screen[x][y] = newColor;

    // Recursive calls
    floodFill(screen, x + 1, y, newColor, oldColor);
    floodFill(screen, x - 1, y, newColor, oldColor);
    floodFill(screen, x, y + 1, newColor, oldColor);
    floodFill(screen, x, y - 1, newColor, oldColor);
}

int main() {
    // Create a 2D array to represent the screen
    std::vector<std::vector<int>> screen(WIDTH, std::vector<int>(HEIGHT, 0));

    // Set the initial screen colors
    screen[0][0] = 1;
    screen[1][1] = 1;
    screen[2][2] = 1;

    std::cout << "Initial screen:" << std::endl;
    printScreen(screen);

    // Perform flood fill
    floodFill(screen, 1, 1, 2, 1);

    std::cout << "After flood fill:" << std::endl;
    printScreen(screen);

    return 0;
}

