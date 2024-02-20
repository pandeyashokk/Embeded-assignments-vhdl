# FSM for Computing Least Common Multiple (LCM)

This VHDL code implements a Finite State Machine (FSM) for calculating the Least Common Multiple (LCM) of two numbers.

## Description

The FSM has the following states:
- **START**: Initializes the LCM to 10 and transitions to the INPUT state.
- **INPUT**: Assigns the input numbers to variables `x` and `y` and calculates `z = x * y`, then transitions to the CHECK state.
- **CHECK**: Compares `x` and `y` and transitions to UPDATEX, UPDATEY, or OUTPUT state accordingly.
- **UPDATEX**: Updates `x = x - y` and transitions back to the CHECK state.
- **UPDATEY**: Updates `y = y - x` and transitions back to the CHECK state.
- **OUTPUT**: Calculates the LCM using the formula `lcm = z / x` and transitions back to the START state.

## Inputs
- `reset`: Asynchronous reset input.
- `clk`: Clock input.
- `num1`: First input number.
- `num2`: Second input number.

## Outputs
- `lcm`: Output of the LCM calculation.

## Implementation
The FSM is implemented using two processes:
1. **State Logic Process (`sl`)**: Handles the state transitions based on the clock and reset signals.
2. **Combinational Logic Process (`cl`)**: Implements the state actions and updates the LCM calculation.
