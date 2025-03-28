// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Event Example:
    Abstraction- Decentralized Exchange: On a smart contract traders can trade tokens - from the smart contract emit and event
    they can get the data(web from mobile)

    After emitting events you cant read them in the past only for entities outside the blockchain - not stored as memory
    events have lower gas cost than storage  
*/

contract LearnEvents {
    // 1. Declare the event and emit the event.
    // Only use 3 indexed per event
    event NewTrade(
        uint  date,
        address indexed from,
        address indexed to,
        uint indexed amount
        );

    function tradeFunction(address to, uint amount) external {
        // outside consumer can see this event through web3.py
        // block.timestamp is a global variable that gives the current timestamp
        emit NewTrade(block.timestamp,msg.sender,to,amount);
    }
}