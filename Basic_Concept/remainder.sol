//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Ek function likh jo do numbers ka remainder return kare (e.g., 7 % 3 ka answer 1 hoga).

contract MyContract {

    function remainder(uint a, uint b) public pure returns(uint) {

        require (b != 0, "Cannot divide by zero");
        return a % b;
    }
}