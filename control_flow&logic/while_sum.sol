// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// Que- Write a function that calculates the sum of even numbers from 1 to n using a for loop.

contract MyContract {

    function sum(uint n) public pure returns(uint) {
        uint i = 0;
        uint result;

        while (i <= n) 
        {
            result += i;
            i += 2;   
        }
        return result;
    }
}