// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Write a function that stores a uint value in storage, and another function that fetches the value from storage. Which data location is used for the state variable num?

contract MyContract {
    uint value;

    function setValue(uint num) public {
        value = num;
    }

    function getValue() public view returns(uint) {
        return value;
    }
}