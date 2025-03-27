// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* 
Rstricted Access to a contract is a common practice.

By Default, a contract state is read-only unless it is specified as public

We can restrict who can modify the contract's state or call a contract's functions using modifiers.

    Let us build a contract with modified restricted access with the following common writeouts:

    onlyBy- only the mentioned called can call this function
    onlyAfter- called after certain time period
    costs- call this function only if certain value is provided
*/

contract RestrictedAccess {
    address public owner = msg.sender;
    uint public creationTime = block.timestamp;
    //write a modifier onlyBy that will require the current called to be equal to
    //An account address which we set as an input in the modifier and if
    // the requirement fails send a message that says- sender not authorized

    //write a function that will change the owner address

    modifier onlyBy() {
        require(owner == msg.sender, "Sender Not Authorized");
        _;
    }

    function changeOwnerAddress(address _newAddress) public onlyBy {
        owner = _newAddress;
    }

}

contract RestrictedAddress2 {

    address public owner = msg.sender;
    uint public creationTime = block.timestamp;

    modifier onlyBy() {
        require(owner == msg.sender, "Sender Not Authorized");
        _;
    }

    modifier onlyAfter() {
        require(block.timestamp >= creationTime + 3 weeks, "Function was called too early");
        _;
    }

    function changeOwnerAddress(address _newAddress) public onlyBy onlyAfter {
        owner = _newAddress;    
    }

    // write a function that can disown the current owner
    // Only run the function 3 weeks after the creation of the contract
    function disown()  onlyBy public {
        delete owner;
    }
}