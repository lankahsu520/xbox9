#include <stdio.h>
#include <string.h>

#define TAG "helloworld_warning"

int main(int argc, char *argv[])
{
	int ret = 0;

	char buff[128] = "123";

	printf("Hello world !!! (%ld)\n", strlen(buff));

	return 0;
}
