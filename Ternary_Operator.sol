//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Ek function likh jo int ka absolute value return kare (negative values ko positive banaye).

contract MyContract {
    uint b;

    function absolute(int a) public pure returns(uint) {
        return a < 0 ? uint(-a) : uint(a);
    }
}