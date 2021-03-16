#include <stdio.h>
int main()
{
    char bytes[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    int sum = 0;
    for (int i=0; i<10; i++)
    {
        bytes[i] |= 8;
        sum += bytes[i];
    }
    printf("%d\n", sum);
    return 0;
}
