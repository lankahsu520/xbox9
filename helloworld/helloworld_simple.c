#include <stdio.h>

#define TAG "helloworld_simple"

void prompt(void)
{
	int result = 0;
	result++;
	printf("Hello world !!! (result: %d)\n", result);
}

int main(int argc, char *argv[])
{
	prompt();

	return 0;
}
