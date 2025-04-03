// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

//Question :Develop a lottery contract where participants can only enter before a deadline,
//   and the winner is selected after it ends.

contract MyContract {
    address owner;
    uint public deadline;
    mapping(uint => address) entryStack;
    mapping(address => bool) alreadyAdded;
    uint public index = 0;

    constructor() {
        owner = msg.sender;
        deadline = block.timestamp + 24 hours - 30 seconds; // To stop manipulation by miners so its fair deducted 30 seconds from deadline.
    }

    modifier onlyBefore() {
        require(deadline >= block.timestamp,"Entries closed now");
        _;
    }

    modifier onlyAfter() {
        require(block.timestamp > deadline,"Enteries still open");
        _;
    }
        
    modifier onlyBy() {
        require(msg.sender==owner,"Not Authorized");
        _;
    }

    function enrty() public payable onlyBefore {
        require(!alreadyAdded[msg.sender],"Already registered");
        require(msg.value == 1 ether, "Lottery entry amount is 1ETH!");
        entryStack[index] = msg.sender;
        alreadyAdded[msg.sender] = true;
        index++;
    }

    function winner() public onlyBy onlyAfter returns(address) {
        require(index > 0, "No participants");
        uint randomNumber = uint(keccak256(abi.encodePacked(block.timestamp, msg.sender, address(this).balance))) % index;
        address winnerAddress = entryStack[randomNumber];

        (bool success, ) = winnerAddress.call{value: address(this).balance}("");
        require(success, "Transfer failed!");

        index = 0;

        return winnerAddress;
    }
}