// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Que-Modify deposit() to revert if msg.value is not exactly 1 Ether.

contract MyContract {

    function deposit() public payable {
        if (msg.value != 1 ether) {
            revert("Only 1 ether acceptable");
        }
    }
}