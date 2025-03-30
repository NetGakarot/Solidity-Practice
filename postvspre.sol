//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


/* Que: Ek function likh jo uint a, uint b le aur return kare: a++ + ++b.
*/

contract MyContract {

    function data(uint a, uint b) public pure returns(uint) {
        uint result = a++ + ++b;
        return result;
    }
}

/* post- a++ this works after the operation has picked the value i.e before increment.
   pre - ++a this works before the operation has executed.
*/