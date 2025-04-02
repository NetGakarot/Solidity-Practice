// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Create a contract Parent with a virtual function greet(). Override it in Child and 
//  return a modified message.

contract Base {

    function greet() public pure virtual returns(string memory) {
        return "Hello, This is Shubham";
    }
}

contract Derived is Base {

    function greet() public pure override  returns(string memory) {
        return "Hello, This is Gakarot";
    }
}