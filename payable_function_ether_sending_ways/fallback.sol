// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Que-Create a contract where fallback() function stores the sender’s address and amount in a mapping.

contract MyContract {

    mapping(address => uint) sender_details;

    fallback() external payable {
        sender_details[msg.sender] += msg.value;
    }
}