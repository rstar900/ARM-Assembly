# Introduction_to_Assembly

The projects in this folder are based on tutorials in the playlist https://youtube.com/playlist?list=PL2EF13wm-hWAlQe87UB2HV0SVhBXFpXbn

<br>

Code is tested on the following emulator : https://cpulator.01xz.net/?sys=arm-de1soc

<br>

hello.s is tested on Qemu as ARM emulator. Will also run on native Raspberry Pi running linux. Type these commands :

<br>

as hello.s -o hello.o <br>
ld hello.o -o hello <br>
./hello

<br><br>
## Debugging hello.s using GDB
![alt text](https://github.com/rstar900/ARM-Assembly/blob/main/hello_s_rpi.png?raw=true)
