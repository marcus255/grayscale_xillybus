#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdint.h>

int main(int argc, char *argv[]) {

  int fdr, fdw;

  fdr = open("/dev/xillybus_read_32", O_RDONLY);
  fdw = open("/dev/xillybus_write_32", O_WRONLY);

  if ((fdr < 0) || (fdw < 0)) {
    perror("Failed to open Xillybus device file(s)");
    exit(1);
  }

  int a = 0x123456;
  int b = 0;

  write(fdw, (void *) &a, sizeof(a));
  read(fdr, (void *) &b, sizeof(b));

  printf("FPGA said: %d => %d\n",
	 a , b);

  close(fdr);
  close(fdw);

  return 0;
}