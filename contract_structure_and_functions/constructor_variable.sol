// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Write a contract with a constructor that accepts an integer _num and sets it as a state variable.

contract MyContract {
    uint num;

    constructor(uint _num) {
        num = _num;
    }
}