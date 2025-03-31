// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Que- Write a function sendTo(address payable _to) that sends  ETH from the contract balance using transfer().

contract MyContract {

    function sendTo(address payable to, uint amount) public payable {
        require(amount > 0,"Amount cant be zero");
        require(address(this).balance > amount, "Not enough ether");
        to.transfer(amount);
    }

}