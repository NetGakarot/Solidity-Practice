//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Ek function likh jo do boolean values le aur AND, OR, NOT apply kare.

contract MyContract {


    function booleanPractice(bool c, bool d) public pure returns(bool andResult, bool orResult, bool notResult) {
        andResult = c && d;
        orResult = c || d;
        notResult = !c;

    }
}