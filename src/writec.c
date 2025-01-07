#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>

int main()
{
char *str = "hello\n";
int fd = open("tmp.txt", O_CREAT|O_WRONLY|O_TRUNC);
int rslt = write(fd, str, strlen(str));
close(fd);
printf(" O_CREAT = 0x%x\n",  O_CREAT);
printf(" O_WRONLY = 0x%x\n",  O_WRONLY);
printf(" O_TRUNC = 0x%x\n",  O_TRUNC);
}
