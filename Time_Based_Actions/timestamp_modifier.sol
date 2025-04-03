// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

//Question :
//Convert this function to use a modifier instead of require() inside the function:

contract MyContract {

    uint unlockTime;

    constructor(uint _delayInSeconds) {
        unlockTime = block.timestamp + _delayInSeconds;
    }

    modifier onlyAfter() {
        require(block.timestamp >= unlockTime,"Claimable after locked period ends");
        _;
    }

    function claimReward() public onlyAfter {
        (bool success, ) = msg.sender.call{value:1 ether}("");
        require(success,"Failed");

    }
}