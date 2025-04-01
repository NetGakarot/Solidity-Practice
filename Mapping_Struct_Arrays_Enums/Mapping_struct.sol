// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Define a struct for storing user details (name, age). Use a mapping to store these 
// details based on the user's address.

contract MyCOntract {
    struct user_Details {
            string name;
            uint age;
    }

    mapping(address => user_Details) data;

    function setData(address _address, string memory _name, uint _age) public {
            data[_address] = user_Details(_name, _age);
    }

    function getdata(address _address) public view returns(string memory,uint) {
        return (data[_address].name, data[_address].age);
    }

}