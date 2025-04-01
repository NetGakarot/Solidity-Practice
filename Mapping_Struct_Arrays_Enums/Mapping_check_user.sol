// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Write a function to check if a user's details are already stored in the mapping and
//  return whether the user exists or not.

contract MyContract {

    mapping(address => uint) data;

    function setData(address _address, uint _amount) public {
       require(data[_address] == 0, "User already exists!");
        data[_address] = _amount;
    }
}


                