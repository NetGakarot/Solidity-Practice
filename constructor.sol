//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que - Create a variable owner and create constructor that sets msg.sender as owner

contract MyContract {

    address public owner;

    constructor() {
        owner = msg.sender;
    }
}