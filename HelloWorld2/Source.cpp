#include <stdio.h>

extern "C"
void launch_helloFromGPU();

int main(int argc, char** argv){
	printf("Hello World from CPU\n");

	launch_helloFromGPU();
}