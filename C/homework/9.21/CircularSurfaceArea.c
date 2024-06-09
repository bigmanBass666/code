#include <stdio.h>
#include <math.h>

const float PI = 3.14159265358;

float sphereSurfaceArea(float radius)
{
    return 4 * PI * pow(radius, 2);
}

float sphereVolume(float radius)
{
    return 4.0/3 * PI * pow(radius, 3);
}

int main()
{
    float radius = 0;
    printf("Enter the radius: ");
    scanf("%f", &radius);
    printf("The sphere surface area: %f\n", sphereSurfaceArea(radius));
    printf("The sphere volume: %f", sphereVolume(radius));

    return 0;
}