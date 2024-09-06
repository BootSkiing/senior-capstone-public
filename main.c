// Mock application running ontop of the Openmsp430
// Compile this to create the pmem.mem & smem.mem files that will be loaded into the Openmsp430 memory

#include <stdio.h>		// Probably not needed
#include <stdlib.h>
#include "hardware.h"	// Probably not needed

int main(){

	char data[] = "A";

	// write to memory 100 times (arbitrary number of writes)
	for(int i=0; i<100; i++){
		//char *mem;
		char *mem = (char*) 0xE000;
		//mem = malloc(sizeof(data));
		strcpy(mem, data);
	}
	return 0;
}
