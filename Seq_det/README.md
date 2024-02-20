## Write VHDL code for sequence detector(1011)

# **SEQUENCE DETECTOR**
This repository contains VHDL code for Sequence Detector(sequence) and its corresponding testbench (sd_tb).

### Files
 - (seqdet.vhdl): VHDL code for the detector entity and architecture
 - (seqdet_tb.vhdl): VHDL code for the sd_tb entity and architecture.

### SEQUENCEDETECTOR((sequence))
The (sequence) entity represents Jk flipflop with following ports: 
 - (RESET): Reset input
 - (CLK): Clock input
 - (a):  input bit
 - (z): output

### Testbench(jk_tb)
The testbench(sd_tb) is used to verify the functionality of the (sequence) entity. It provides stimulus to the sequence detector module and observes its outputs.

### Running the Testbench
To run the testbench: 

 1. Compile the VHDL file(seqdet.vhdl and seqdet_tb.vhdl) using a VHDL compiler(e.g., GHDL).
 2. Simulate the compiled design using a simulator(e.g., GTKWAVE)

### Test Cases
The testbench includes various test cases to verify the behavior of the sequence detector: 
 1. **Test Case 1**:Inputs (a='1')
 2. **Test Case 2**:Inputs (a='0')
 3. **Test Case 3**:Inputs (a='1')
 4. **Test Case 4**:Inputs (a='1')
 5. (*Add more test cases as needed*)
