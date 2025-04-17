#include<iostream>

#include <conio.h>

void floodFill(int x, int y, int fillColor, int oldColor) {
    if (getpixel(x, y) == oldColor) {
        putpixel(x, y, fillColor);
        floodFill(x + 1, y, fillColor, oldColor);
        floodFill(x - 1, y, fillColor, oldColor);
        floodFill(x, y + 1, fillColor, oldColor);
        floodFill(x, y - 1, fillColor, oldColor);
    }
}

void drawPolygon(int x[], int y[], int n) {
    for (int i = 0; i < n; i++) {
        line(x[i], y[i], x[(i + 1) % n], y[(i + 1) % n]);
    }
}

int main() {
    int gd = DETECT, gm;
    initgraph(&gd, &gm, "");

    int n;
    std::cout << "Enter the number of sides of the polygon: ";
    std::cin >> n;

    int x[n], y[n];
    std::cout << "Enter the coordinates of the polygon vertices:\n";
    for (int i = 0; i < n; i++) {
        std::cin >> x[i] >> y[i];
    }

    cleardevice();
    drawPolygon(x, y, n);

    int seedX, seedY;
    std::cout << "Enter the seed point coordinates: ";
    std::cin >> seedX >> seedY;

    int fillColor;
    std::cout << "Enter the fill color (integer value): ";
    std::cin >> fillColor;

    int oldColor = getpixel(seedX, seedY);

    floodFill(seedX, seedY, fillColor, oldColor);

    getch();
    closegraph();
    return 0;
}

