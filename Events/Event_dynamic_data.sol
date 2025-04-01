// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Que:
Write a contract with a function addUser(address user, string memory name) that adds a 
user and emits an event UserAdded(address indexed user, string name).
*/

contract MyContract {
    event UserAdded(address indexed user, string name);
    mapping(address => string) userDetails;

    function addUser(address _user, string memory _name) public {

        userDetails[_user] = _name;
        emit UserAdded(_user, _name);
    }
}