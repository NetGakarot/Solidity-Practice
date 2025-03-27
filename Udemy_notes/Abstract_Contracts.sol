// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* ABSTRACT CONTRACTS

Abstract contract is one which contains at least one function without any implementation
Such a contract is used a sbase contract
Generally an abstract contract contains both implemented as well as abstract functions.
Derived contract will implement the abstract function and use the existing function as and when required
*/

// Base
contract X {

    // since the function has no implementations we should mark it as virtual
    function y() public view virtual returns(string memory) {}
        }

contract Z is X {
    function y() public override pure returns(string memory) {
        return "hello";
    }
}

contract Member {
    string name;
    uint age = 38;

    //because function setName has not body the contract is abstract
    function setName() public virtual returns(string memory) {}

    function returnAge() public view returns(uint) {
        return age;
    }
}

// derived contract 

contract Teacher is Member {
    function setName() public pure override returns(string memory) {
        return "Gordon";
    }
}

// override functions overrides the abstract functions function.

/* Exercise:
1. Create an abstract base contract called Calculator with a read only public function that returns integers.
2. Create a derived contract called Test which derives the Calculator contract and can calculate 1 + 2 return the result.
*/

contract Calculator {

    function sum() public view virtual returns(uint) {}
}

contract Test is Calculator {

    function sum() public pure override returns(uint) {
        return 1+2;
    }
}