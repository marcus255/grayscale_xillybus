#include <stdlib.h>
#include <stdio.h>
#include "imgproc.h"
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdint.h>
#include <errno.h>


/************************************************************************************************************************
*********************************Image proessing using Zedboard Zynq -7000***********************************************
***************source: https://www.cl.cam.ac.uk/projects/raspberrypi/tutorials/image-processing/first.html***************
*******************************Authors: Przemyslaw Karbownik and Marek Trojan********************************************
************************************************************************************************************************/

#define debug_msg(text,x) printf(text, x);

int main(int argc, char * argv[])
{
	init_imgproc();
	clock_t start = clock();
	pid_t pid;
	int fdr, fdw;
	fdr = open("/dev/xillybus_read_32", O_RDONLY);				//get descriptor from PL output
	fdw = open("/dev/xillybus_write_32", O_WRONLY);				//get descriptor from PL input
	if ((fdr < 0) || (fdw < 0)) 
	{
	    perror("Failed to open Xillybus device file(s)");
	    exit(1);
	}
  	pid = fork();

	if (pid < 0) 
	{
		perror("Failed to fork()");
		exit(1);
	}

	if (pid)													//child process
	{
		close(fdr);
		uint32_t *tologic;
		char *buf;
		int rc, donebytes;
		Image * img = imgFromBitmap("lena.bmp");
	  	int pixel_count = img->width*img->height;
		uint32_t bytes_count = pixel_count*sizeof(uint32_t);
		tologic = malloc(bytes_count);
		if (!tologic) 
		{
			fprintf(stderr, "Failed to allocate memory\n");
			exit(1);
		}
		uint32_t x, y;
		for(x = 0; x < img->width; x++)
		{
			for(y = 0; y < img->height; y++)
			{
				tologic[x*(img->height)+y] = *((uint32_t *)(imgGetPixel(img, x, y))) >> 8;
			}
		}
		buf = (char *) tologic;
		donebytes = 0;
		while (donebytes < bytes_count)							//loop care about writing all bytes to PL
		{
			rc = write(fdw, buf + donebytes, bytes_count - donebytes);
			if ((rc < 0) && (errno == EINTR)) continue;
			if (rc <= 0) 
			{
				perror("write() failed");
				exit(1);
			}
			donebytes += rc;
		}
		imgDestroy(img);
		close(fdw);
		return 0;
	} 
	else 														//parent process
	{
		close(fdw);
		uint32_t *fromlogic;
		char *buf;
		int rc, donebytes;
		Image * img = imgFromBitmap("lena.bmp");
	  	int pixel_count = img->width*img->height;
		uint32_t bytes_count = pixel_count*sizeof(uint32_t);
		Viewer * view = viewOpen(img->width, img->height, "First");
		viewDisplayImage(view, img);
		waitTime(2000);
		viewClose(view);
	    fromlogic = malloc(bytes_count);
	    if (!fromlogic) 
	    {
	      printf("Failed to allocate memory\n");
	      exit(1);
	    }
	    buf = (char *) fromlogic;
	    donebytes = 0;
	    while (donebytes < bytes_count)							//loop care about writing all bytes to PL
	    {
			rc = read(fdr, buf + donebytes, bytes_count - donebytes);
			if ((rc < 0) && (errno == EINTR))	continue;
			if (rc < 0) 
			{
				printf("read() failed");
				exit(1);
			}
			if (rc == 0) 
			{
				printf("Reached read EOF!? Should never happen.\n");
				exit(0);
			}
			donebytes += rc;
	    }

		unsigned int x, y;
		for(x = 0; x < img->width; x++)
		{
			for(y = 0; y < img->height; y++)
			{
				char *ptr = (char*)(fromlogic + x*(img->height) + y);
				imgSetPixel(img, x, y, *(ptr), *(ptr), *(ptr));		//set pixels from PL
			}
		}
	    close(fdr);
	    printf( "Ilość cykli poświęconych na wykonywanie programu: %lu\n", (long unsigned int)clock());
		Viewer * view_new = viewOpen(img->width, img->height, "Second");
		viewDisplayImage(view_new, img);
		waitTime(2000);
		viewClose(view_new);
		imgDestroy(img);
		quit_imgproc();
		return 0;
	}
}
