// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Create a contract Base with a public string variable. Inherit Base in Derived and create
//   a function that modifies the inherited variable.

contract Base{

    string public name;
}

contract Derived is Base {

    function setValue(string memory _name) public {
        name = _name;
    }
}