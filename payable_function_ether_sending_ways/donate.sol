// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Que- Create a donate(address payable _recipient) function that 
// forwards Ether instead of storing it in the contract.

contract MyContract {

    function donate(address payable _recipient) public payable {
        require(msg.value > 0,"Not enough ETH!");
        (bool success, ) = _recipient.call{value: msg.value}("");
        require(success,"Failed!");
    }
}