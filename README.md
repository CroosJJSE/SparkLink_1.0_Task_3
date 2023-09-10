# SparkLink_1.0_Task_3
Implement the functionality of the DM71LS161A a-bit synchronous binary counter using Verilog.


Design a Verilog module that replicates the full operation of the DM71LS161A, a Synchronous 4-bit Binary Counter IC. The module should be able to load, enable, and count in binary from O to 15 following clock pulses while providing counter outputs and ripple carry outputs (See the datasheet provided). Ensure that the Verilog code accurately models the DM71LS161Ns behaviour. (Consider the timing diagram given in the datasheet).


![image](https://github.com/CroosJJSE/SparkLink_1.0_Task_3/assets/141708783/e3056b11-5e7f-4ef9-86b9-56481f08dd9d)

# Timing Diagram
![image](https://github.com/CroosJJSE/SparkLink_1.0_Task_3/assets/141708783/8f9c0d80-cb68-4751-8162-e1465c1141b0)


# Observersion from the diagram.
1. Clear is Asynchronous active high input to reset.
![image](https://github.com/CroosJJSE/SparkLink_1.0_Task_3/assets/141708783/d31f0548-e66a-4f8f-9759-49673bcf1d8b)


2. Load is Synchrous active high input to read the input. (load the preset from the input and keep increment the output in clk)
3. only increment if both EN_T and EN_P are 1
![image](https://github.com/CroosJJSE/SparkLink_1.0_Task_3/assets/141708783/0c1576be-a399-4910-acf7-f139f4cc2ed7)


4. ripple carry gives 1 if output reach 15 then output will become 0
   

![image](https://github.com/CroosJJSE/SparkLink_1.0_Task_3/assets/141708783/9ae24413-293c-4486-81e7-53f1294c0f84)


check our implementation.
