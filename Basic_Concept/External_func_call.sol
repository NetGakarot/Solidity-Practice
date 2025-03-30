//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Que:External Function Call:

Ek external function likh jo "Hello External" return kare.

Kya contract ke andar se call kar sakte ho?
*/

contract MyContract {

    function data() external pure returns(string memory) {
        return "Hello World";
    }

    // No you cant call external function from within the contract. 

    // This method can be used if you want to call external function from within the contract
    function getdata() public view returns(string memory) {
        return this.data();
    }
}