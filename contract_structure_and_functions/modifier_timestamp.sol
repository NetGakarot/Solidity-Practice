// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que-Write a contract where a modifier restricts function execution based on block.timestamp.

contract MyContract {
    uint public deployment_time = block.timestamp;
    uint public required_time = deployment_time + 5 minutes;

    modifier onlyAfter() {
        require(block.timestamp >= required_time, "Required time need to be passed");
        _;
    }

    function dummy(uint a) public view onlyAfter returns(uint) {
            return a;
    }
}