//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Que- Ek function likh jo sirf tab execute ho jab koi ETH bheja jaye (msg.value > 0).
*/

contract MyContract {

    modifier requireEther() {
        require(msg.value > 0, "Ether value low");
        _;
    }

    function data() public payable requireEther returns(uint) {
        return msg.value;
    }
}