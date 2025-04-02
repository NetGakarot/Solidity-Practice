// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Create a multi-level inheritance structure (Grandparent → Parent → Child).
//   Use super to call functions from each level.

contract Grandparent {

    function greet() public virtual pure returns (string memory) {
        return "This is dada";
    }

}

contract Parent is Grandparent {

    function greet() public virtual override pure returns (string memory) {
         return string(abi.encodePacked(super.greet(), " -> This is papa"));

    }
}


contract Child is Parent {
    function greet() public virtual override pure returns (string memory) {
        return string(abi.encodePacked(super.greet()," -> This is beta"));

    }
}