// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Create a nested mapping to store a user's name, age, and favorite color. 
//  The first key should be the user's address, and the second key should be a string for 
//  the type of information.

contract MyContract {
    mapping(address => mapping(string => string)) private data;

    function setData(address _address, string memory _name, string memory _age, string memory _favoriteColor) public {
        data[_address]["name"] = _name;
        data[_address]["age"] = _age;
        data[_address]["color"] = _favoriteColor;
    }

    function getData(address _address, string memory key) public view returns(string memory) {
        return data[_address][key];
    }
}
