//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Que:  Block.timestamp Manipulation:

Ek function likh jo block.timestamp return kare.

Kya miner isko manipulate kar sakta hai?
*/

contract Mycontract {

    function manipulation() public view returns(uint) {
        return block.timestamp;
    }
}

// Yeah miner can exploit it like if someone uses it for generating random numbers
// they can get the partial value used for generating it but for small value.