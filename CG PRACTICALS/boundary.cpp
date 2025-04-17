#include <GL/glut.h>

void init() 
{
    glClearColor(1.0, 1.0, 1.0, 0.0);
    glMatrixMode(GL_PROJECTION);
    gluOrtho2D(0, 640, 0, 480);
}
void boundaryFill(int x, int y, float* fillColor, float* bc) 
{
    float color[3];
    glReadPixels(x, y, 1.0, 1.0, GL_RGB, GL_FLOAT, color);
    if ((color[0] != bc[0] || color[1] != bc[1] || color[2] != bc[2]) &&
        (fillColor[0] != color[0] || fillColor[1] != color[1] || fillColor[2] != color[2])) 
		{
        glColor3fv(fillColor);
        glBegin(GL_POINTS);
        glVertex2i(x, y);
        glEnd();
        glFlush();
        int directions[4][2] = {{1, 0}, {-1, 0}, {0, 1}, {0, -1}};
        for (int i = 0; i < 4; i++) {
            boundaryFill(x + directions[i][0], y + directions[i][1], fillColor, bc);
        }
    }
}
void mouse(int btn, int state, int x, int y) {
    y = 480 - y;
    if (btn == GLUT_LEFT_BUTTON && state == GLUT_DOWN) {
        float bcol[] = { 1, 0, 0 };
        float newCol[] = { 0, 0, 0 };

        switch (x / 213) {
            case 0:
                newCol[1] = 1;
                break;
            case 1:
                newCol[0] = 1;
                newCol[1] = 1;
                break;
            case 2:
                newCol[0] = 1;
                newCol[2] = 1;
                break;
        }
        boundaryFill(x, y, newCol, bcol);
    }
}
void display() {
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(1, 0, 0);
    glBegin(GL_LINE_LOOP);
    glVertex2i(150, 100);
    glVertex2i(300, 300);
    glVertex2i(450, 100);
    glEnd();
    glFlush();
}
int main(int argc, char** argv) {
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowSize(640, 480);
    glutInitWindowPosition(200, 200);
    glutCreateWindow("A4");
    init();
    glutDisplayFunc(display);
    glutMouseFunc(mouse);
    glutMainLoop();
    return 0;
}
