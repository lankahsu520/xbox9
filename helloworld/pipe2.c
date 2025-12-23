#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif
#include <unistd.h>
int main(void) {
	int fd[2];
	return pipe2(fd, 0);
}