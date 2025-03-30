// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// Que- Write a contract with a function that checks if a number is positive, negative, or zero using if-else.

contract MyContract {


    function checkdata(int a) public pure returns(string memory) {

        if(a > 0) {return "Number is positive";} 
        else if(a < 0) {return "Number is negative";} 
        else {return "Number is zero";} 

    }
}