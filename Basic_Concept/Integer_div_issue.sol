//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


/* Que:Integer Division Issue:

Ek function likh jo 5 / 2 return kare.

Solidity me integer division ka impact kya hai?
*/

contract MyContract {

    function division(uint a , uint b) public pure returns(uint) {
        require(b > 0, "Cannot divide with zero");
        return a / b;
    }
}

// Impact is that it will not give the decimal value and will quotient as o/p.