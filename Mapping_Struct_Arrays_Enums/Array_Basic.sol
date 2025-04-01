// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Create a fixed-size array of 5 integers. Write a function to set and retrieve the values.

contract MyContract {
    uint [5] list;

    function setData(uint index, uint _num) public {
        require(index < 5, "Index out of bounds");
        list[index] = _num;
    }

    function getData(uint index) public view returns(uint) {
        require(index < 5, "Index out of bounds");
        return list[index];
    }
}