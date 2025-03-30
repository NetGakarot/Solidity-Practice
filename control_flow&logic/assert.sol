// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// Que- Write a function that asserts a state variable is always 100.


contract MyContract {
    uint public a = 100;

    function check() public view {
        assert(a == 100);
    }
}