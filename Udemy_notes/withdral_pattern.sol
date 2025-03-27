// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Exercise:
    It is not safe to interact with more than one customer at a time so write a function 
        to return funds using withdrawl pattern.
    1. Write a function called withdrawlFunds that takes an amount and returns bool success in the signature
    2. Require that the balance of the current called is greater than or equal to the amount.
    3. Subtract the amount from balance of the current sender
    4. Transfer the amount over and return the trueness of function.
*/

function withdrawFunds(uint amount) public returns(bool success) {
    require(balance[msg.sender] >= amount);
    balance[msg.sender] -= amount;
    msg.sender.transfer(amount);
    return true;
}

// For knowledge only can write up extra details if wanna compile and deploy.