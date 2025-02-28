#include "memory.h"

#include <stdio.h>
#include <stdint.h>

int main() {
	printf("hello GDB\n");
	int x = 10 * 5;
	int *y = &x;
	printf("*y: %d\n", y);
	return 0;
}
