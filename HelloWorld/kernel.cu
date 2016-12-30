#include "device_launch_parameters.h"
#include <stdio.h>

__global__ void helloFromGPU(){
	printf("Hello World from GPU!\n");
}

int main(){
	printf("Hello World from CPU!\n");

	helloFromGPU <<< 1,10>>>();
	cudaDeviceReset();
}