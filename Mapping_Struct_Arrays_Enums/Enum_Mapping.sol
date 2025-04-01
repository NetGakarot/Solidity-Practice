// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Create a contract where you use a mapping to store the status of orders. 
//   The key will be the order ID, and the value will be the Status enum.

contract MyContract {
    enum Status {Pending, Shipped, Delivered}


    mapping(address => mapping(uint => Status)) orderDetails;

    function setData(address _address,uint order_ID, Status _status) public {
        orderDetails[_address][order_ID] = _status;
    }

    function getData(address _address, uint order_ID) public view returns(Status) {
        return orderDetails[_address][order_ID];
    }
}