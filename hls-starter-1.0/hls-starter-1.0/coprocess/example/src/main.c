#include <math.h>
#include <stdint.h>
#include "xilly_debug.h"

void xillybus_wrapper(int *in, int *out) {
#pragma AP interface ap_fifo port=in
#pragma AP interface ap_fifo port=out
#pragma AP interface ap_ctrl_none port=return

  uint32_t r, g, b, y;

  xilly_puts("Pixel incoming\n");

  // Handle input data
  r = ((*in) >> 16) & 0xFF;
  g = ((*in) >> 8) & 0xFF;
  b = (*in) & 0xFF;

  // Debug output
  xilly_puts("r=");
  xilly_decprint(r, 1);
  xilly_puts(" g=");
  xilly_decprint(g, 1);
  xilly_puts(" b=");
  xilly_decprint(b, 1);
  xilly_puts("\n");

  // Run the calculations
  y = (r + g + b) / 3;
  in++;

  // Handle output data
  *out++ = y;
}
