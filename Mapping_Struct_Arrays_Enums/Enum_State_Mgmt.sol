// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Que- Create a contract where the status of a user changes based on actions they perform
 (e.g., Pending → Shipped → Delivered). Use an enum to manage the status, and make sure the
  state is updated correctly.
*/


contract MyContract {
    enum Status { Pending, Shipped, Delivered }

    mapping(address => Status)  orderDetails;
    mapping(address => bool)  hasOrdered;

    function placeOrder() public {
        require(!hasOrdered[msg.sender], "Order already placed!");
        orderDetails[msg.sender] = Status.Pending;
        hasOrdered[msg.sender] = true;
    }

    function setShipped() public {
        require(hasOrdered[msg.sender], "Order not placed yet!"); 
        require(orderDetails[msg.sender] == Status.Pending, "Order must be Pending before shipping");
        orderDetails[msg.sender] = Status.Shipped;
    }

    function setDelivered() public {
        require(hasOrdered[msg.sender], "Order not placed yet!"); 
        require(orderDetails[msg.sender] == Status.Shipped, "Order must be Shipped before delivery");
        orderDetails[msg.sender] = Status.Delivered;
    }

    function getOrderStatus() public view returns (Status) {
        require(hasOrdered[msg.sender], "No order placed yet!");
        return orderDetails[msg.sender];
    }
}
