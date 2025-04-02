// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Write a function that takes an array of uint in memory and returns the maximum 
// value in the array.

contract MyContract {

    function data(uint[] memory arr) public pure returns(uint) {
        require(arr.length > 0, "Array cannot be empty");
        uint max = arr[0];

        for (uint i=1; i < arr.length; i++) 
        {
            if (arr[i] > max) {
                max = arr[i];
            }  
        }
        return max;
    }
}