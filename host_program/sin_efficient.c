#include <stdio.h>
#include <unistd.h>

#include <stdlib.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdint.h>

#define N 1000

struct packet {
  uint32_t v1;
  float v2;
};

int main(int argc, char *argv[]) {

  int fdr, fdw, rc, donebytes;
  char *buf;
  pid_t pid;
  struct packet *tologic, *fromlogic;
  int i;
  float a, da;

  fdr = open("/dev/xillybus_read_32", O_RDONLY);
  fdw = open("/dev/xillybus_write_32", O_WRONLY);

  if ((fdr < 0) || (fdw < 0)) {
    perror("Failed to open Xillybus device file(s)");
    exit(1);
  }

  pid = fork();

  if (pid < 0) {
    perror("Failed to fork()");
    exit(1);
  }

  if (pid) {
    close(fdr);

    tologic = malloc(sizeof(struct packet) * N);
    if (!tologic) {
      fprintf(stderr, "Failed to allocate memory\n");
      exit(1);
    }

    // Fill array of structures with just some numbers
    da = 6.283185 / ((float) N);

    for (i=0, a=0.0; i<N; i++, a+=da) {
      tologic[i].v1 = i;
      tologic[i].v2 = a;
    }

    buf = (char *) tologic;
    donebytes = 0;

    while (donebytes < sizeof(struct packet) * N) {
      rc = write(fdw, buf + donebytes, sizeof(struct packet) * N - donebytes);

      if ((rc < 0) && (errno == EINTR))
	continue;

      if (rc <= 0) {
	perror("write() failed");
	exit(1);
      }

      donebytes += rc;
    }

    sleep(1); // Let debug output drain (if used)

    close(fdw);
    return 0;
  } else {
    close(fdw);

    fromlogic = malloc(sizeof(struct packet) * N);
    if (!fromlogic) {
      fprintf(stderr, "Failed to allocate memory\n");
      exit(1);
    }

    buf = (char *) fromlogic;
    donebytes = 0;

    while (donebytes < sizeof(struct packet) * N) {
      rc = read(fdr, buf + donebytes, sizeof(struct packet) * N - donebytes);

      if ((rc < 0) && (errno == EINTR))
	continue;

      if (rc < 0) {
	perror("read() failed");
	exit(1);
      }

      if (rc == 0) {
	fprintf(stderr, "Reached read EOF!? Should never happen.\n");
	exit(0);
      }

      donebytes += rc;
    }

    for (i=0; i<N; i++)
      printf("%d: %f\n", fromlogic[i].v1, fromlogic[i].v2);

    sleep(1); // Let debug output drain (if used)

    close(fdr);
    return 0;
  }
}