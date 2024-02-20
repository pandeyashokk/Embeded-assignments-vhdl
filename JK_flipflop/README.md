## Write VHDL code for JK flipflop

# **JK Flip-Flop**
This repository contains VHDL code for JK flip-flop (Jk_FlipFlop) and its corresponding testbench (JK_flipFlop_tb).

### Files
 &#9679; Jk_FlipFlop.vhdl: VHDL code for the jk entity and architecture
 &#9679;  Jk_FlipFlop_tb.vhdl: VHDL code for the jk_tb entity and architecture.


 ### JK Flipflop((Jk))
The (Jk) entity represents Jk flipflop with following ports: 
 &#9679; (CLR): Acts like RESET, input
 &#9679; (CLK): Clock input
 &#9679; (J): J input
 &#9679; (K): K input
 &#9679; (Q and Qn): output

 
### Testbench(JK_FlipFlop_tb)
The testbench is used to verify the functionality of the (JK_FlipFlop) entity. It provides stimulus to the Jk flipflop and observes its outputs.

### Running the Testbench
To run the testbench: 

 1. Compile the VHDL file(JK_FlipFlop.vhdl and JK_FlipFlop_tb.vhdl) using a VHDL compiler(e.g., GHDL).
 2. Simulate the compiled design using a simulator(e.g., GTKWAVE)

### Test Cases
The testbench includes various test cases to verify the behavior of the GCD calculator: 
 1. **Test Case 1**:Inputs (J='0'), (K='0')
 2. **Test Case 2**:Inputs (J='1'), (K='0')
 3. **Test Case 3**:Inputs (J='0'), (K='1')
 4. **Test Case 4**:Inputs (J='1'), (K='1')
 5. (*Add more test cases as needed*)
