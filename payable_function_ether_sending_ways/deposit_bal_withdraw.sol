// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Que- Create a contract with a deposit() function that accepts Ether.
// Que - Create a function getBalance() that returns the contract’s current balance.
// Que - Write a withdrawAll() function that allows only the owner to withdraw all Ether.


contract MyContract {

    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyBy() {
        require(msg.sender == owner);
        _;
    }

    fallback() external payable { }
    receive() external payable { }

    function deposit() external payable {
        require(msg.value > 0, "Not enough ether");     
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }



    function withdrawAll(address addr) public onlyBy {
        uint balance = address(this).balance;
        require(balance > 0, "Not enough ether to withdraw");
        require(addr != address(0), "Address might be wrong please check and confirm");
        (bool success, ) = addr.call{value: balance}("");
        require(success,"Transaction Failed");

    } 
}