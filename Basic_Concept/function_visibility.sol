//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Que-Function Visibility Test:

Ek private function banao jo Hello return kare aur ek public function jo usko call kare.

Kya direct external call possible hai?
*/

contract MyContract {

    function data() private pure returns(string memory) {
        return "Hello";
    }

    function getData() public pure returns(string memory) {
        return data();
    }
}

// No external call is not possible for private function.