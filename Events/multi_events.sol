// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Que:Create a contract with two events, Deposited(address indexed user, uint256 amount) 
and Withdrawn(address indexed user, uint256 amount). Write a function that allows deposits 
and withdrawals and emits both events.
*/

contract MyContract {

    address owner;

    constructor() {
        owner = msg.sender;
    }

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    modifier onlyBy() {
        require(msg.sender==owner,"Not authorized");
        _;
    }

    function deposit() external payable {
        require(msg.value > 0, "Cant deposit Zero");
        emit Deposited(msg.sender, msg.value);
    }
    function withdraw(uint _amount) private onlyBy {
        require(_amount <= address(this).balance, "Not enough ETH!");
        (bool success, ) = owner.call{value: address(this).balance}("");
        require(success, "failed");
        emit Withdrawn(msg.sender, _amount);
    }


}