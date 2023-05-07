# README (Federated Learning - Transfer learning pipeline for one node)

This project implements Federated Learning in fullfillment of the final project for ECE 8893-Parallel Programming for FPGAs (Spring 2023). The federated averaging server here is a raspberry pi, and the nodes are PynqZ2 FPGA boards.

The source code folder contains the kernel code files that run on the PL of each FPGA board, and provides a script to run HDL synthesis in Vitis HLS.

## Requirements

Can be run in a standard Linux environment with Vitis HLS installed. Code references for this project are the lab 2 code from this course, and a PyTorch based model script that is also provided in this folder.

The instructors may use the code as they please. We are willing to open-source our code.

## Steps to run

## To check the functional correctness ##
# 1. Make
```
make clean
make hls_sim (for float)
make (for ap_fixed)
```
The number of input training data samples per epoch can be changed by changing the SET_SIZE param in conv.h file, and the input_feature_set_linear in inference_testbench_v3.cpp. Currently SET_SIZE is set to 1, meaning only 1 input per epoch. It has been tested for up to 3 input images per epoch.

# 2. Running C-simulation
```
./csim.out
```
## To Build the bitstream ##
# 1. Running Vitis HLS
```
make synth
```
# 2. Run the Vivado and generate the bitstream using the IP generated after synthesis

## Steps for board run ##
# 1. Launch the server
'''
cell -> run all
'''
On the server machine upload the Server_code.ipynb file. This code launches the server and sends the initial Fully Connected layer weights (FC Weights) to the node machines (FPGAs) via sockets. It receives the updated values from each of the machines, averages them and sends them again. In the end, it finally receives the weights computed by the FPGAs. This tracks the overall execution time for both the epochs.

# 2. Launch the clients
'''
cell -> run all
'''
On each of the 4 client machines upload the client_<Write a FPGA number (1,2,3,4)>_host.ipynb file along with the bitstream generated (both the .bit and .hwh file). This code receives the FC weights from the server, executes the convolution on the kernel and sends the updated weights back. The kernel also returns the output value to calculate the error. This file also tracks the execution time of the kernel.

## To launch the PyTorch model ##
'''

cell -> run all
'''

Used Google Colab to run the Pytorch_Model.ipynb file. This kernel replicates the model implemented here.
