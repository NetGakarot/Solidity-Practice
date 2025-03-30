//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*Que - Ek function likh jo uint8 variable ko 255 se badhane ki koshish kare.
*/

contract MyContract {
    uint8 a = 255;

    function integerOverflow() public returns(uint) {
            return a++;
    }
}

// if you want to over flow use unchecked{ a++; }