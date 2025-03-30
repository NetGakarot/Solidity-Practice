// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// Que- Write a contract that checks if a number is prime using loops.

contract MyContract {


    function checkPrime(uint num) public pure returns(string memory) {
        if (num < 2) {
            return "Number is not prime";
        }

        for (uint i = 2; i * i <= num; i++) { 
            if (num % i == 0) {
                return "Number is not prime";
            }
        }
        
        return "Number is prime";
        }
}