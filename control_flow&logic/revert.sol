// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// Que-Write a function that uses revert to stop execution if input is an even number.

contract MyContract {

    function dataCheck(uint num) public pure returns(string memory) {
        if (num % 2 == 0) {
            revert("Number is even");
        }
        return "Number is not even";
    }
}