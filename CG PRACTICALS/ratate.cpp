#include <iostream>
#include <GL/glut.h>
#include <vector>

using namespace std;

int edge;
vector<int> xpoint;
vector<int> ypoint;

void reflection() {
    char reflectionAxis;
    cout << "Enter Reflection Axis (x or y): ";
    cin >> reflectionAxis;

    if (reflectionAxis == 'x' || reflectionAxis == 'X') {
        glColor3f(0.0, 0.0, 1.0);
        glBegin(GL_POLYGON);
        for (int i = 0; i < edge; i++) {
            glVertex2i(xpoint[i], (ypoint[i] * -1) + 480);
        }
        glEnd();
        glFlush();
    } else if (reflectionAxis == 'y' || reflectionAxis == 'Y') {
        glColor3f(0.0, 0.0, 1.0);
        glBegin(GL_POLYGON);
        for (int i = 0; i < edge; i++) {
            glVertex2i((xpoint[i] * -1) + 640, ypoint[i]);
        }
        glEnd();
        glFlush();
    }
}

void init() {
    glClearColor(1.0, 1.0, 1.0, 0.0);
    glMatrixMode(GL_PROJECTION);
    gluOrtho2D(0, 640, 0, 480);
    glClear(GL_COLOR_BUFFER_BIT);
}

void Draw() {
    glColor3f(1.0, 0, 0);
    glBegin(GL_LINES);
    glVertex2i(0, 240);
    glVertex2i(640, 240);
    glEnd();
    glColor3f(1.0, 0, 0);
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

    reflection();
}

int main(int argc, char** argv) {
    cout << "Enter No of edges: ";
    cin >> edge;

    int xpointNew, ypointNew;
    cout << "Enter " << edge << " points of the polygon:\n";
    for (int i = 0; i < edge; i++) {
        cout << "Enter Point " << i << ": ";
        cin >> xpointNew >> ypointNew;
        xpoint.push_back(xpointNew);
        ypoint.push_back(ypointNew);
    }

    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowSize(640, 480);
    glutInitWindowPosition(200, 200);
    glutCreateWindow("2D Reflection");
    init();
    glutDisplayFunc(Draw);
    glutMainLoop();

    return 0;
}


