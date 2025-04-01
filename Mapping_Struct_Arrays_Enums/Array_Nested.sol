// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Create a contract with a 2D array (array of arrays). Write a function to add
//   and retrieve data from specific indices.

contract MyContract {
    uint[][] list;

    function setData(uint[] memory _nums) public {
        list.push(_nums);
    }

    function getData(uint index) public view returns(uint[] memory) {
        require(index < list.length, "Index out of bounds");
        return list[index];
    }

     function getArraySize(uint index) public view returns (uint) {
        require(index < list.length, "Index out of bounds");
        return list[index].length;
    }
}