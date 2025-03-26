//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Function Modifiers are used to modify the behaviour of a function.
// Function modifiers are customizable modification for functions.

contract Owner {

    address owner;
    // when we deploy this contract we want to set the address to the owner(msg.sender)

    constructor () {
        owner = msg.sender;
    }
    // to write a modifier we statically declare the modifier keyword and then
    // name it and inside we write our logic and modifications
    modifier onlyOwner {
        // customizable logic 
        require(msg.sender == owner);
        _;
        // the underscore continues the function
    }

    modifier costs(uint price) {
        // what is msg.value: the amount in wei being sent with the message to a contract
        require(msg.value >= price);
        _;
    }

} 

// is is a keyword grabbing inheritence from another contract - Owner
contract Register is Owner {
    mapping (address => bool) registeredAddress;
    uint price;

    constructor(uint initialPrice)  { 
        price = initialPrice;
    }

    function register() public payable costs(price) {
        registeredAddress[msg.sender] = true;
    }

    // onlyOwner is a func modifier that requires
    // only the owner to be able to change the price
    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }
}

/* Exercise:
    1. Create a function modifier called cost for our register function that checks to see
    that the senders value(hint: look up msg.value) requires to be greater than or equal to price.
    The function modifier should take and modification
*/