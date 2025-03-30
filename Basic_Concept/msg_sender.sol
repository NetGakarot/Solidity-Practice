//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- That returns the senders address.

contract MyContract {

    function sender() public view returns(address) {
        return msg.sender;
    }
}