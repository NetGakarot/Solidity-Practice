// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Write a contract where the constructor sets msg.sender as owner and allows only the owner to call a function.

contract MyContract {
    address owner;

    constructor() {
        owner = msg.sender;
    }


    function dummy() public view returns(address){
        require(owner == msg.sender, "Not Authorized");
        return owner;

    }
}