// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Write a function that takes a struct as an argument and uses 
//  calldata for the struct. What are the benefits of using calldata here?

contract MyContract {

    struct Details {
        string person;
        uint ID;
    }


    function data(Details calldata details) public pure returns(string memory,uint) {
        return (details.person,details.ID);

    }
}