// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Implement a selfDestructContract() function where only the owner can destroy 
//  the contract and send remaining Ether to their address.

contract MyCOntract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized!");
        _;
    }

    function selfDestructContract() public onlyOwner {
        selfdestruct(payable(owner));
    }

}