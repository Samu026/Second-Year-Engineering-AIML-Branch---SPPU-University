#include <GL/glut.h>
#include <iostream>
#include <vector>
#include <math.h>

int windowWidth = 640;
int windowHeight = 480;

// Object vertices
std::vector<int> xpoint;
std::vector<int> ypoint;
int edge;

void init() {
    glClearColor(1.0, 1.0, 1.0, 0.0);
    glMatrixMode(GL_PROJECTION);
    gluOrtho2D(0, windowWidth, 0, windowHeight);
    glClear(GL_COLOR_BUFFER_BIT);
}

void rotation() {
    int cx, cy;
    std::cout << "\nEnter Arbitrary point x, y: ";
    std::cin >> cx >> cy;
    cx = cx + 320;
    cy = cy + 240;

    glColor3f(0.0, 1.0, 0.0);
    glBegin(GL_POINTS);
    glVertex2i(cx, cy);
    glEnd();
    glFlush();

    double theta;
    std::cout << "Enter the angle in degrees: ";
    std::cin >> theta;
    double radian = theta * 3.14159 / 180.0;

    glColor3f(0, 0, 1.0);
    glBegin(GL_POLYGON);
    for (int i = 0; i < edge; i++) {
        int x = round(((xpoint[i] - cx) * cos(radian) - (ypoint[i] - cy) * sin(radian)) + cx);
        int y = round(((xpoint[i] - cx) * sin(radian) + (ypoint[i] - cy) * cos(radian)) + cy);
        glVertex2i(x, y);
    }
    glEnd();
    glFlush();
}

void display() {
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(1.0, 0, 0);
    glBegin(GL_LINES);
    glVertex2i(0, 240);
    glVertex2i(640, 240);
    glEnd();
    glBegin(GL_LINES);
    glVertex2i(320, 0);
    glVertex2i(320, 480);
    glEnd();
    glFlush();
    glColor3f(1.0, 0, 0);
    glBegin(GL_POLYGON);
    for (int i = 0; i < edge; i++) {
        glVertex2i(xpoint[i], ypoint[i]);
    }
    glEnd();
    glFlush();
}

int main(int argc, char** argv) {
    std::cout << "\nEnter No of edges: ";
    std::cin >> edge;

    int xpointnew, ypointnew;
    std::cout << "Enter " << edge << " points of polygon:\n";
    for (int i = 0; i < edge; i++) {
        std::cout << "Enter Point " << i << ": ";
        std::cin >> xpointnew >> ypointnew;
        xpoint.push_back(xpointnew + 320);
        ypoint.push_back(ypointnew + 240);
    }

    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowSize(windowWidth, windowHeight);
    glutInitWindowPosition(200, 200);
    glutCreateWindow("2D");
    init();
    glutDisplayFunc(display);
    rotation();
    glutMainLoop();

    return 0;
}

