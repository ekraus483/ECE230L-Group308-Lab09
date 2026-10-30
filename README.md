# Sequential Circuits: Latches


## Names
Ethan Kraus, Jason Wu


## Summary
In this lab, we learned to implement a simple 8-bit memory system using a d-latch. Our final creation is an 8-bit input system, which is stored in one of 4 1-byte memory modules based on two selector switches. Then, using those same selector switches, 8 leds will illuminate using the stored data from the currently selected memory module. Furthermore, in verilog, we also began experimenting with “parameters” to create more dynamic modules. 


## Lab Questions


###  Why can we not just use structural Verilog to implement latches?
In verilog, latches will result in a combinatorial loop. Because the output depends on itself, it will constantly oscillate back and forth rapidly, resulting in unstable and unpredictable behavior. However, by using an “always” block, we can stabilize the value and make it function properly by only updating the value when there is a change in one of the input variables we specify.


### What is the meaning of always @(*) in a sensitivity block?
When we specify (*) for an always block, we are declaring that the code inside should be sensitive to all of our input values. If any input value changes, then the code should be re-ran and the output updated. 


### What importance is memory to digital circuits?
Memory allows digital circuits to store data and retain that information until it shuts off. It also allows for the circuit to have the data stored while other operations are happening.

