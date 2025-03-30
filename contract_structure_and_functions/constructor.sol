// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- 1️⃣ Write a contract with a constructor that initializes an owner variable.

contract MyContract {
    address public owner;
    constructor() {
        owner = msg.sender;
    }
}