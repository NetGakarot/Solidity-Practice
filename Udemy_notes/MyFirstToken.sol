//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// The contract allows only its creator to create new coins( different issuance schemes are possible).
// Anyone can send coins to each other without a need for registering with a username and password, all you need is and Ethereum keypair.

contract Coin {
    address public minter;
    mapping(address => uint) public balances;

    event Sent(address from, address to, uint amount);

    constructor() {
        minter = msg.sender;
    }

    // make new coins and send them to  an adress
    // only the owner can send these coins
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;  
    }

    // send any amount of coins
    //to an existing address
    error insufficientBalance(uint requested, uint available);
    
    function send(address receiver, uint amount) public {
        if (amount >= balances[msg.sender]) 
        revert insufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
            balances[msg.sender] -= amount;
            balances[receiver] += amount;
            emit Sent(msg.sender, receiver, amount);  
    }
}

