// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Que:
Create a contract with an event Transaction(address indexed sender, uint256 value)
 that emits the Transaction event when a user sends an amount. Use indexed parameters.
*/

contract MyContract {
    event Transaction(address indexed sender, uint value);

    fallback() external payable {
        emit Transaction(msg.sender, msg.value);
     }

    receive() external payable {
        emit Transaction(msg.sender, msg.value);
      }

    function deposit() external payable {
        emit Transaction(msg.sender, msg.value);

    }


}