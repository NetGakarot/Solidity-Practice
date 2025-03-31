// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Que-Write a function multiSend() that sends Ether from contract to 3 predefined addresses using call()
// but send eth to contract first using deposit().

contract MyContract {
    address [] addr = [0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db,0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB,0x617F2E2fD72FD9D5503197092aC168c91465E7f2];


    fallback() external payable { }
    receive() external payable { }
    function deposit() public payable {}

    function multiSend() public payable {
        require(address(this).balance >= 3 ether, "Not enough balance in contract");
        for (uint i=0; i < addr.length; i++) 
        {
            (bool success, ) = addr[i].call{value: 1 ether}("");
            require(success,"Failed");
        }    
        
    }
}