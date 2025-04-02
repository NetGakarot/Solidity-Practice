// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ICalculator {
    function multiply(uint a, uint b) external pure returns (uint);
}

abstract contract Factorial {
        function factorial(uint num) public virtual returns(uint);
}


contract Calculator is ICalculator,Factorial {
    function multiply(uint a, uint b) external override  pure returns (uint){
        return a * b;
    }

    function factorial(uint num) public pure override returns(uint) {
        uint result = 1;
        for (uint i=2; i <= num; i++) 
        {
            result *= i;
        }
        return result;
    }
}