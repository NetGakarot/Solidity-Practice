// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Create a struct that contains a user's name, age, and an address 
//   (as another struct inside). Write a function to set and retrieve the user's data.

contract MyContract {

    struct User_info {
        string name;
        uint age;
    }
    
    struct User_Address {
        address _address;
        User_info user;
    }

    User_Address user_data;

    function setData(address _addr, string memory _name, uint _age) public {
        user_data = User_Address(_addr, User_info(_name,_age));
    }

    function getData() public view returns(address,string memory,uint) {
        return (user_data._address,user_data.user.name,user_data.user.age);
    }



}