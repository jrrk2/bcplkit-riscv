#include <unistd.h>
#include <string.h>

int main()
{
char *msg = "Hello, World\n";
return write(1, msg, strlen(msg));
}
