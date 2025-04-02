// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Create an interface IWallet with functions deposit(uint amount) and 
//  withdraw(uint amount). Implement a contract that follows this interface.

interface IWallet {

    function deposit(uint amount) external payable;
    function withdraw(uint amount) external ;

    
}

contract Wallet is IWallet {

    address owner;

    constructor() {
        owner = msg.sender;
    }


    function deposit(uint amount) public payable override  {
        require(amount > 0,"Amount cant be zero");
        require(msg.value == amount, "Sent value must match amount");

    }

    function withdraw(uint amount) public override {
        require(msg.sender==owner,"Not authorized");
        require(amount > 0,"Amount cant be zero");
        require(address(this).balance >= amount, "Insufficient balance");
        (bool success, ) = owner.call{value:amount}("");
        require(success,"Failed");
    }
}