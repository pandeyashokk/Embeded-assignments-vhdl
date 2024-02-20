## Write VHDL code for BCD COUNTER

# **BCD COUNTER**
This repository contains VHDL code for BCD COUNTER(bcd_seg) and its corresponding testbench (BCD_tb).

### Files
 - (BCD.vhdl): VHDL code for the bcd_seg entity and architecture
 - (BCD_tb.vhdl): VHDL code for the BCD_tb entity and architecture.

### BCD COUNTER((bcd_seg))
The (bcd_seg) entity represents upCounter with following ports: 
 - (b0,b1,b2,b3):  input bit
 - (a,b,c,d,e,f,g): output

### Testbench(BCD_tb)
The testbench(BCD_tb) is used to verify the functionality of the (bcd_seg) entity. It provides stimulus to the full adder module and observes its outputs.

### Running the Testbench
To run the testbench: 

 1. Compile the VHDL file(BCD.vhdl and BCD_tb.vhdl) using a VHDL compiler(e.g., GHDL).
 2. Simulate the compiled design using a simulator(e.g., GTKWAVE)

### Test Cases
The testbench includes various test cases to verify the behavior of the BCD counter

### Simulation Duration
 Each test case is simulated for a duration to allow  sufficient time for the computation to finish and the result to stabilize.

