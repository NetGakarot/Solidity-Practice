// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*Create a contract where each order has a status enum and an array of products.
 Use a mapping to store the orders by ID, and a function to update the order's status.
 */


contract MyContract {
    enum Status { Pending, Shipped, Delivered }

    struct Order {
        Status orderStatus;
        string[] products;
    }

    mapping(uint => Order) orders; 
    uint orderCount; 

    function placeOrder(string[] memory _products) public returns (uint) {
        orderCount++;
        orders[orderCount] = Order(Status.Pending, _products);
        return orderCount;
    }

    function updateStatus(uint _orderId, Status _newStatus) public {
        require(_orderId > 0 && _orderId <= orderCount, "Invalid Order ID");
        orders[_orderId].orderStatus = _newStatus;
    }

    function getOrder(uint _orderId) public view returns (Status, string[] memory) {
        require(_orderId > 0 && _orderId <= orderCount, "Invalid Order ID");
        return (orders[_orderId].orderStatus, orders[_orderId].products);
    }
}
