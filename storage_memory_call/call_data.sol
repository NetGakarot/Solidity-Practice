// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Write a contract that accepts an array in calldata, performs a calculation
//   (like summing up the values), and returns the result.


contract MyContract {

    function sumArray(uint[] calldata arr) public pure returns(uint) {
        uint result;
        require(arr.length > 0,"Array cant me empty");
        for (uint i=0; i<arr.length; i++) 
        {
            result += arr[i];
        }
        return result;
    }
}