// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Write a contract that demonstrates overriding in multiple inheritance. 
//  (Contract A, B, C where C inherits both A and B).

contract A {

    function greet() public pure virtual returns(string memory) {
        return "This is A";
    }
}

contract B is A {

    function greet() public pure virtual override returns(string memory) {
        return string(abi.encodePacked(super.greet()," -> This is B"));
    }
}
contract C is B {

    function greet() public pure override returns(string memory) {
        return B.greet();
    }
}