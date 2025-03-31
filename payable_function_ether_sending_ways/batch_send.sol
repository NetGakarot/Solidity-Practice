// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Que-  Write a function batchSendEther(address payable[] memory recipients, uint amount)
// that sends amount ETH to all recipients in a loop.

contract MyContract {

    function batchSendEther(address payable[] memory recipients, uint amount) public {
        uint totalRecipients = recipients.length;
        require(totalRecipients > 0, "Recipients list is empty!");

        uint totalAmountNeeded = amount + 0.001 ether; // For gas buffer
        require(address(this).balance > totalAmountNeeded, "Not enough ETH!");

        uint perAddressAmount = amount/recipients.length;
             
        for (uint i=0; i < recipients.length; i++) 
        {
            (bool success, ) = recipients[i].call{value: perAddressAmount}("");
            require(success, "Failed");
        }

    }
}