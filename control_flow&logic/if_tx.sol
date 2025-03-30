// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// Que-Write a contract that reverts the transaction if msg.value is less than 1 ETH.

contract MyContract {


    function  txCheck() public payable returns(uint) {
        require(msg.value >= 1 ether, "Not enough ether, required amount is minimum 1 ether");
        
        return msg.value;
        
    }
}