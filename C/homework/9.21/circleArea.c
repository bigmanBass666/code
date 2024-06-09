#include <stdio.h>

#define PI 3.1415926535

float getCircleArea(float radius)
{
    float circleArea = radius * PI * radius; 
    return circleArea;
}

int main()
{
    float radius = 8;
    printf("%f", getCircleArea(radius));

    return 0;
}