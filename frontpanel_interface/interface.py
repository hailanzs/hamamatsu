# -*- coding: utf-8 -*-

#%%
# import various libraries necessery to run your Python code
import time   # time related library
import sys    # system related library
ok_loc = 'C:\\Program Files\\Opal Kelly\\FrontPanelUSB\\API\\Python\\3.6\\x64'
sys.path.append(ok_loc)   # add the path of the OK library
import ok     # OpalKelly library

#%% 
# Define FrontPanel device variable, open USB communication and
# load the bit file in the FPGA
dev = ok.okCFrontPanel()  # define a device for FrontPanel communication
SerialStatus=dev.OpenBySerial("")      # open USB communicaiton with the OK board
ConfigStatus=dev.ConfigureFPGA("C:\\Users\\cakulev2\\ham\\hamamatsu\\Christmas_Ham.runs\\impl_1\\hamamastu.bit"); # Configure the FPGA with this bit file

# Check if FrontPanel is initialized correctly and if the bit file is loaded.
# Otherwise terminate the program
print("----------------------------------------------------")
if SerialStatus == 0:
    print ("FrontPanel host interface was successfully initialized.")
else:    
    print ("FrontPanel host interface not detected. The error code number is:" + str(int(SerialStatus)))
    print("Exiting the program.")
    sys.exit ()

if ConfigStatus == 0:
    print ("Your bit file is successfully loaded in the FPGA.")
else:
    print ("Your bit file did not load. The error code number is:" + str(int(ConfigStatus)))
    print ("Exiting the progam.")
    sys.exit ()
print("----------------------------------------------------")
print("----------------------------------------------------")

#%% 
while(1):
    data_in = 0
    print("input reading o writin pls (1 for read, 2 for write:")
    read_write = int(input())

    if(read_write == 2):
        print("input the data you wanna write:")
        data_in = int(input())
    print("input the register you want to write/read to")
    register = int(input())


    dev.SetWireInValue(0x00, data_in) 
    dev.SetWireInValue(0x01, register) 
    dev.SetWireInValue(0x02, read_write)
    dev.UpdateWireIns()  # Update the WireIns

#%% 
# We will read data from the FPGA in two different variables
# Since we are using a slow clock on the FPGA to compute the results
# we need to wait for the resutl to be computed
    time.sleep(1)                 

# First recieve data from the FPGA by using UpdateWireOuts
    if(read_write == 1):
        dev.UpdateWireOuts()
        data_out = dev.GetWireOutValue(0x20)  # Transfer teh recived data in result_difference variable
        print("this is what you read: " , data_out)
    elif(read_write == 2):
        print("bih you wrote")
    else:
        print("u fialed")
dev.Close
    
#%%