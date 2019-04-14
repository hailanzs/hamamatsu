#include <iostream>

/* this is code for opalkelly wires and such */




int main() {

	/* null checks */
	
	if(FALSE == okFrontPanelDLL_LoadLib(NULL)) {
		printf("Could not load FrontPanel DLL\n");
		exit(-1);
	}
	
	/* instantiate new device */
	okCFrontPanel *dev = new okCFrontPanel();
	dev->OpenBySerial();
	dev->LoadDefaultPLLConfiguration();
	dev->ConfigureFPGA("hamamastu.bit");
	
	uint8_t data_output;
	
	// set wireIns
	dev->SetWireInValue(0x00,1); // set rw_flag
	dev->SetWireInValue(0x00,1); // set data_write
	
	// set wireOuts
	dev->SetWireOutValue(0x20,data_output);	// set data_out

}

