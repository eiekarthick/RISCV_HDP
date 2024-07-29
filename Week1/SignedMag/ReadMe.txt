Signed number representation on the computers
1s complement
2s complement 

1 MSB bit is used for the sign and others are for the Magnitude

1’s complement of a binary number is another binary number obtained by toggling all bits in it, i.e., transforming the 0 bit to 1 and the 1 bit to 0.In the 1’s complement format , the positive numbers remain unchanged . The negative numbers are obtained by taking the 1’s complement of positive counterparts.

for example +9 will be represented as 00001001 in eight-bit notation and -9 will be represented as 11110110, which is the 1’s complement of 00001001.

Examples: 

1's complement of "0111" is "1000"
1's complement of "1100" is  "0011" 
2’s complement of a binary number is 1, added to the 1’s complement of the binary number. In the 2’s complement representation of binary numbers, the MSB represents the sign with a ‘0’ used for plus sign and a  ‘1’ used for a minus sign. the remaining bits are used for representing magnitude. positive magnitudes are represented in the same way as in the case of sign-bit or 1’s complement representation.  Negative magnitudes are represented by the 2’s complement of their positive counterparts.

Examples: 

2's complement of "0111" is  "1001"
2's complement of "1100" is  "0100" 


Another trick to finding two’s complement:
Step 1:  Start from the Least Significant Bit and traverse left until you find a 1.  Until you find 1, the bits stay the same

Step 2: Once you have found 1, let the 1 as it is, and now

Step 3: Flip all the bits left into the 1.

Illustration
Suppose we need to find 2s Complement of 100100

Step 1: Traverse and let the bit stay the same until you find 1. Here x is not known yet. Answer = xxxx00 –

Step 2: You found 1. Let it stay the same. Answer = xxx100

Step 3: Flip all the bits left into the 1. Answer = 011100.

Hence, the 2s complement of 100100 is 011100.

For one’s complement, we simply need to flip all bits. 
For 2’s complement, we first find one’s complement. We traverse the one’s complement starting from LSB (least significant bit), and look for 0. We flip all 1’s (change to 0) until we find a 0. Finally, we flip the found 0. For example, 2’s complement of “01000” is “11000” (Note that we first find one’s complement of 01000 as 10111).   If there are all 1’s (in one’s complement), we add an extra 1 in the string. For example, 2’s complement of “000” is “1000” (1’s complement of “000” is “111”).