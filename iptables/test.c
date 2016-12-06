#include <sys/types.h>
#include <unistd.h>
#include<stdlib.h>

int main(void) {        
    setuid(0);
    clearenv();
    system("/home/username/test.sh");
}
