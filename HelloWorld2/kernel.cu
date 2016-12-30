#include "device_launch_parameters.h"

#include <stdio.h>

__global__ void helloFromGPU(){
	printf("Hello World from GPU\n");
}

extern "C"
void launch_helloFromGPU(){
	helloFromGPU<<< 1, 10 >>>();
	cudaDeviceReset();
}