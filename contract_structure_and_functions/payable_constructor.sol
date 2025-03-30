// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Write a contract with a payable constructor and check its balance after deployment.

contract MyContract {
    uint balance;

    constructor() payable {
        balance = msg.value;
    }

    function getBalance() public view returns(uint) {
        return balance;
    }
}