// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// Que- Write a function that requires the caller to be the contract owner before executing.


contract MyCOntract {

    address public owner;

    function setOwner() public returns(address) {
        owner = msg.sender;
        return owner;
    }

    modifier onlyBy() {
        require(owner == msg.sender, "Not Authorized");
        _;
    }

    function dummy() public view onlyBy returns(uint) {
        return 1;
    }
}