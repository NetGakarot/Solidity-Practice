// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
Abstract Contracts
An abstract contract is a contract that cannot be deployed on its own and must be inherited
by another contract. It contains at least one function without implementation.

Abstract contract with an unimplemented function
abstract contract Animal {
    function makeSound() public virtual returns (string memory);
}

Child contract must implement makeSound()
contract Dog is Animal {
    function makeSound() public pure override returns (string memory) {
        return "Bark!";
    }
}

Key Concept:

abstract keyword ensures the contract cannot be deployed alone.

The function must be marked virtual in the abstract contract.

The child contract must use override to implement it.
*/

/*
Interfaces (interface Keyword)
An interface defines a set of functions that another contract must implement. Interfaces:

Cannot have state variables

Cannot have constructor

All functions are external and unimplemented

Define an interface
interface ICalculator {
    function add(uint a, uint b) external pure returns (uint);
}

Implementing the interface
contract Calculator is ICalculator {
    function add(uint a, uint b) external pure override returns (uint) {
        return a + b;
    }
}
ICalculator acts as a blueprint for Calculator.

The Calculator contract must override and implement the add function.


*/