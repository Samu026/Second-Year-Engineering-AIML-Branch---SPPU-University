#include<iostream>
void init() 
{
    glClearColor(1.0, 1.0, 1.0, 0.0);
    glMatrixMode(GL_PROJECTION);
    gluOrtho2D(0, 640, 0, 480);
}
void floodFill(int x, int y) 
{
    float pixel[3];
    glReadPixels(x, y, 1, 1, GL_RGB, GL_FLOAT, pixel);
    if (pixel[0] == 1.0 && pixel[1] == 1.0 && pixel[2] == 1.0) 
	{
        glBegin(GL_POINTS);
        glColor3f(0, 1, 0); // Green fill color
        glVertex2i(x, y);
        glEnd();
        glFlush();
        floodFill(x, y + 1);
        floodFill(x + 1, y);
        floodFill(x, y - 1);
        floodFill(x - 1, y);
    }
}
void mouse(int btn, int state, int x, int y) 
{
    y = 480 - y;
    if (btn == GLUT_LEFT_BUTTON && state == GLUT_DOWN) 
	{
        floodFill(x, y);
    }
}
void drawShape() 
{
    glClear(GL_COLOR_BUFFER_BIT);
    glBegin(GL_LINE_LOOP);
    glColor3f(1, 0, 0);
    glVertex2i(150, 100);
    glVertex2i(300, 300);
    glVertex2i(450, 100);
    glEnd();
    glFlush();
}
int main(int argc, char** argv) 
{
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowSize(640, 480);
    glutInitWindowPosition(200, 200);
    glutCreateWindow("A4");
    init();
    glutDisplayFunc(drawShape);
    glutMouseFunc(mouse);
    glutMainLoop();
    return 0;
}
