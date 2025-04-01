// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Write a contract that uses a struct with nested mappings. The outer mapping should 
//  map a user's address to a struct, and the inner mapping inside the struct should store 
//  the user's phone number.

contract MyCOntract {

    
    struct Details{
        mapping(string => uint) inData;
    }
    mapping(address => Details) outdata;


    function setData(address _address, string memory _name, uint _number) public {
        outdata[_address].inData[_name] = _number;
    }

     function getData(address _address, string memory _name) public view returns (uint) {
        return outdata[_address].inData[_name];
    }

}