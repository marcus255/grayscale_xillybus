HLS:
Zaimportowaliśmy projekt "hls-starter-1.0" z tutoriala http://xillybus.com/tutorials/vivado-hls-c-fpga-howto-1 do Vivado HLS.
Zmodyfikowaliśmy ten plik:
https://github.com/marcus255/grayscale_xillybus/blob/master/hls-starter-1.0/hls-starter-1.0/coprocess/example/src/main.c
Przeprowadziliśmy syntezę plików z kodem i otrzymaliśmy plik xillybus_wrapper.v, o ten:
https://github.com/marcus255/grayscale_xillybus/blob/master/hls-starter-1.0/hls-starter-1.0/coprocess/example/syn/verilog/xillybus_wrapper.v

Vivado:
Pobraliśmy boot partition kit http://xillybus.com/downloads/xillinux-eval-zedboard-1.3c.zip, tam dokonaliśmy edycji pliku xillydemo.v, o tego:
https://github.com/marcus255/grayscale_xillybus/blob/master/xillinux-eval-zedboard-1.3c/verilog/src/xillydemo.v
Następnie do drzewa projektu dodaliśmy wygenerowany wcześniej w HLS plik xillybus_wrapper.v. 
Po wygenerowaniu bitstreama wrzuciliśmy plik xillydemo.bit na kartę. O ten plik:
https://github.com/marcus255/grayscale_xillybus/blob/master/xillinux-eval-zedboard-1.3c/verilog/vivado/xillydemo.runs/impl_1/xillydemo.bit

Program na hosta:
To przerobiona wersja programu z tutoriala http://xillybus.com/tutorials/vivado-hls-c-fpga-howto-2
Główny plik programu na hosta to ten:
https://github.com/marcus255/grayscale_xillybus/blob/master/host_program/src/main.c
