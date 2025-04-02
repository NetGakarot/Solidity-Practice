// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



//Que-Write an interface ITrading with functions buy() and sell(). Implement it in a 
//  DEX contract.


interface ITrading {
    
    function buy(uint _amount) external;
    function sell(uint amount) external;
}

contract DEX is ITrading {
    uint public totalSupply;
    mapping(address => uint) balances;

    function buy(uint _amount) public  override  {
        require(_amount > 0,"Amount cant be zero");
        balances[msg.sender] += _amount;
        totalSupply += _amount;

    }
    
    function sell(uint _amount) public  override  {
        require(_amount > 0,"Amount cant be zero");
        require(balances[msg.sender] >= _amount,"Not enough tokens");
        balances[msg.sender] -= _amount;
        totalSupply += _amount;

    }
}