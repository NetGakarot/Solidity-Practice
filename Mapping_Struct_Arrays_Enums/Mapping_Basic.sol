// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Create a simple mapping to store a user's name using their address.
//  Add a function to set the name and another to get it.


contract MyContract {
    mapping(address => string) data;

    function setNamee(address _address, string memory _name) public {
        data[_address] = _name;
    }

    function getName(address _address) public view returns(string memory) {
        return data[_address];
    }
}
