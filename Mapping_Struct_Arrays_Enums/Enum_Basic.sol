// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Create a contract with an enum called Status { Pending, Shipped, Delivered }.
//   Write a function that sets and gets the order status.

contract MyContract {
    enum Status {Pending, Shipped, Delivered}
    Status orderStatus;

    function setOrder() public {
        orderStatus = Status.Pending;
    }
    function setShipped() public {
        orderStatus = Status.Shipped;
    }
    function setDelivered() public {
        orderStatus = Status.Delivered;
    }

    function getOrderStatus() public view returns(uint) {
        return uint(orderStatus);
    }
}