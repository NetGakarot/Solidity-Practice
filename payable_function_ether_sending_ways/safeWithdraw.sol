// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Que-Write a function safeWithdraw(uint _amount) where the sender can
// withdraw _amount only if the contract has enough balance.

contract MyContract{

    function safeWithdraw(uint _amount) public  {
        require(address(this).balance > _amount, "Not enough ether");
        (bool success, ) = msg.sender.call{value: _amount}("");
        require(success, "Failed!");
    }
}