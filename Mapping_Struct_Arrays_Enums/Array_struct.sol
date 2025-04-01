// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Create an array of structs where each struct stores a user's name and age. 
//  Write a function that adds a user to the array and returns the user's details by index.

contract MyCOntract {
    struct User{
        string name;
        uint age;

    }

    User[] user;

    function setData(string memory _name, uint _age) public {
            user.push(User(_name,_age));
    }

    function getdata(uint index) public view returns(string memory,uint) {
        return (user[index].name,user[index].age);
    }

}