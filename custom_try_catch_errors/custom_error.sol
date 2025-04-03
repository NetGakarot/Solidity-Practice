// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Implement custom errors to handle different withdrawal conditions in a bank contract.

error NotEnoughBalance(uint requested, uint balance);
error NotAuthorized(address sender);
error AmountZero();

contract MyContract {

    address owner;

    constructor() payable  {
        owner = msg.sender;
         if (msg.value == 0) {
            revert AmountZero();
        }
      }

    receive() external payable { }
    fallback() external payable { }

    function deposit() public payable {
        if (msg.value == 0) {
            revert AmountZero();
        }

    }

    function withdraw(uint amount) public {
        if (msg.sender!=owner) {
            revert NotAuthorized(msg.sender);
        }
        if (amount == 0) {
            revert AmountZero();
        }
        if (amount > address(this).balance) {
            revert NotEnoughBalance(amount,address(this).balance );
        }
        (bool success, ) = owner.call{value: amount}("");
        require(success,"Failed");
    }



}