// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Que:
Basic Event Emission

Question: Write a contract that emits an event whenever a number is updated.

Hint: Create an event with the parameters oldValue and newValue.

*/

contract MyContract {
    event Data(uint oldValue, uint newValue);
    uint public oldValue = 0;

    function transferFunds(uint256 _newValue) public {
        emit Data(oldValue,_newValue);
        oldValue = _newValue;

    }
}
