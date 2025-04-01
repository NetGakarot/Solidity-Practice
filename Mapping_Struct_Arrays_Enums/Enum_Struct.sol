// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Create a contract where you store an enum (like Status { Pending, Shipped, Delivered })
//   inside a struct. The struct should also store the order amount.

contract MyContract {
    enum Status { Pending, Shipped, Delivered }

    struct orderDetails {
        uint amount;
        Status orderStatus;
    }

    orderDetails userOrder;

    function setData(uint _amount, Status _status) public {
        userOrder = orderDetails(_amount, _status);
    }

    function getData() public view returns(uint,Status) {
        return (userOrder.amount,userOrder.orderStatus);
    }
}