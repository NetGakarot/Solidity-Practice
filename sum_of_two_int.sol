//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// Que- Ek function likh jo do integers le aur unka sum return kare.

contract MyContract {

    function sum(uint a, uint b) public pure returns(uint) {
        return a + b;
    }
}