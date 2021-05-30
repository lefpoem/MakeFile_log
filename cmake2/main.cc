#include <stdio.h>
#include <stdlib.h>
#include "math/MathFunctions.h" //需要指定目录
/**
 * @brief 
 * 
 * @param argc 
 * @param argv 
 * @return int 
 */
int main(int argc, char *argv[])
{
    if(argc < 3){
        printf("Usage: %s base exponent\n",argv[0]);
        return 1;
    }
    double base = atof(argv[1]);
    int exponent = atoi(argv[2]);
    double result=power(base,exponent);
    printf("%g ^ %d is %g\n",base,exponent,result);
    return 0;
}
