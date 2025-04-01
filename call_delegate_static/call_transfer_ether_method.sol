// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que-Create a contract that sends ether using send and transfer.
//  Compare the two methods in the context of gas limits.

contract MyContract {


    function sendEther(address payable _to, uint _amount) public  {
        bool success = _to.send(_amount);
        require(success, "Failed!"); // Gas-2300 but not reverted on  failed tx.
        // Silently revert the tx without and error just show "False". Manually handling of error.
    }

    function transferEther(address payable _to, uint _amount) public {
        _to.transfer(_amount); // Gas-2300 but reverted on  failed tx.
        // Throw error.
    }
}
