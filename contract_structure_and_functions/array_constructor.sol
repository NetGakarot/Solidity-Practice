// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Write a contract where the constructor initializes an array [10, 20, 30].

contract MyContract {
    uint  [] list = [10,20,30];

    constructor(uint [] memory _list) {
        list = _list;
        
    }
}