// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Optimize a function that computes the factorial of a number using memory for temporary
//   variables. How does it compare in gas usage to a version that uses storage?

contract MyContract {

    function factorial(uint num) public pure returns(uint) {
        if (num == 0 || num == 1) return 1;
        uint result = 1;
        for (uint i = 2; i <= num; i++) 
        {
            result *= i;

        }
        return result;
        
    }
}

// No variable is stored in storage so less gas cost.