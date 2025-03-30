// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// Que- Write a function that calculates the factorial of a number using a for loop.

contract MyContract {
    


    function factorial(uint num) public pure  returns(uint) {
        uint result = 1;
        for (uint i = 2; i <= num; i++) 
        {
           result *= i; 
        }
        return result;  
    }
}