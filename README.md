# Traffic-Light-Controller-using-FSM-in-Verilog
A fully synchronous traffic light controller designed in Verilog using a Moore finite state machine. The design models a two-way intersection with deterministic timing, safety invariants, and a self-checking testbench for functional verification

## Design Details
- FSM Type: Moore Machine
- Clock-driven synchronous design
- Binary timer-based state transitions
- Fully synthesizable RTL


### State Description
S0(2'b00) - NS - Green, EW - Red - 25 cycles
S1(2'b01) - NS - Yellow, EW - Red - 4 cycles
S2(2'b10) - NS - Red, EW - Green - 25 cycles
S3(2'b11) - NS - Red, EW - Yellow - 4 cycles


## Architecture
- State register (`state`)
- Timer register (`timer`)
- Combinational next-state and output logic
- Sequential state and timer update on clock edge


## Verification
A dedicated testbench is provided to:
- Generate clock and reset
- Simulate multiple traffic cycles
- Verify correct sequencing and timing


## Learning Outcomes
- FSM-based control logic design
- Proper separation of combinational and sequential logic
- Timer-driven state transitions
- Writing and understanding Verilog testbenches

