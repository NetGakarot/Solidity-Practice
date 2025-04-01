// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Create a dynamic array that stores user-provided numbers. Write a function that 
//  adds a number to the array and returns the array size.

contract MyContract {

    uint [] list;

    function setData(uint num) public {
        list.push(num);
    }

    function getSize() public view returns(uint) {
        return list.length;
    }

    function getData() public view returns(uint[] memory) {
        return list;
    }
}
