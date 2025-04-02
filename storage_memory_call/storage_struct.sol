// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Write a contract where multiple small state variables are packed together into one 
//  storage slot (use uint8 and bool for packing).

contract MyContract {

    struct Data {
        uint8 newValue;
        bool condition;
    }

    Data data;

    function setData(uint8 newValue) public  {
        data.newValue = newValue;
        data.condition = data.newValue > 5;

    }

    function getData() public view returns(bool) {
        return data.condition;
    }
}