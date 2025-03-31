// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Que-Write a function autoSendEther() that sends 0.05 ETH to the caller 
// only if they have sent at least 0.1 ETH.

contract MyContract {
    function autoSendEther() public payable {
        require(msg.value >= 0.1 ether,"Send at least 0.1 ETH!");
        (bool success, ) = msg.sender.call{value: 0.05 ether}("");
        require( success,"Failed");

    }
}