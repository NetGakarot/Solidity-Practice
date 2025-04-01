// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Create a struct to store a user's name and age. Write a function to set and get the
//  user's details.

contract MyContract {
    struct User {
        string name;
        uint age;
    }

    User user_details;

    function setDetails(string memory _name, uint _age) public {
        user_details = User(_name,_age);
    }

    function getDetails() public view returns(string memory,uint) {
        return (user_details.name,user_details.age);
    }
}