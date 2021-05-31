#include <stdio.h>
#include <stdlib.h>
#include "config.h"
#ifdef USE_MYMATH
    #include <MathFunctions.h>
#else
    #include <math.h>
#endif
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
#ifdef USE_MYMATH
    printf("Now we use our own Math Library.\n");
    double result=power(base,exponent);
#else
    printf("Now we use standard library.\n");
    double result=pow(base,exponent);
#endif
    printf("%g ^ %d is %g\n",base,exponent,result);
    return 0;
}
