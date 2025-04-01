// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Create a mapping where each address has an array of numbers. 
// Write a function to add a number to a user's array and retrieve the array for that address.

contract MyContract {
    
    mapping(address => uint[]) data;

    function setData(address _address,uint _num) public {

        data[_address].push(_num);
    }

    function getData(address _address) public view returns(uint[] memory) {
        return data[_address];
    }
}