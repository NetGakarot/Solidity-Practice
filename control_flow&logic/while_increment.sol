// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// Que-Write a function that counts from 1 to n using a while loop and returns the final count.

contract MyContract {
    
   function counts(uint n) public pure returns(uint) {
        uint final_count;
        uint i = 1;
        while (i <= n) 
        {
            final_count = i;
            i++; 
        }

        return final_count;
    }
}