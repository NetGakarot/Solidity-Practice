//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Special variables (global variables) are globally available variables and provides information above the blockchain.
// msg.sender: Sender of the message(current call), msg.value(uint): Number of wei send with the message.
// block.timestamp: Current block timestamp as seconds since unix epochs, block.number (uint): current block number

// You can find all global variable in solidity docs

contract LedgerBalance {

// create a map of wallets with amounts
// set up a function that can update the amount of the person call the contract- current address - msg.sender

    mapping(address => uint) balance;

    function updateBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }
    function getBalance() public view returns(uint) {
        return balance[msg.sender];
    }
}

contract Updated {


    function updateBalance() public {
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updateBalance(30);
    }
}

contract SimpleStorage {
    uint storeData;

    function set(uint x) public {
       storeData = x;


    }

    function get() public view returns(uint) {
        return storeData;
    }
}


