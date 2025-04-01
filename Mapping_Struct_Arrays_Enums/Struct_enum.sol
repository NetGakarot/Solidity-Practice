// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Create a contract that stores a struct with an enum 
//  (like Status { Pending, Shipped, Delivered }) representing an order's status. 
//  The struct should also store the order's details like amount, date, etc.

contract MyContract {

    enum Status { Pending, Shipped, Delivered }
    struct Data {
    Status orderStatus;
    uint amount;
    uint date;
    string product_name;
    }

    Data data;

     function setOrder(uint _amount,string memory _name) public {
        data = Data(Status.Pending, _amount,block.timestamp, _name);
    }

    function setShipped() public {
        data.orderStatus = Status.Shipped;
    }

    function setDelivered() public {
        data.orderStatus = Status.Delivered;
    }

    function getOrder() public view returns(Status,uint,uint,string memory) {
        return (data.orderStatus,data.amount,data.date,data.product_name);
    }
}