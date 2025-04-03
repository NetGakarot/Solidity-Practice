// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



contract MyContract {

function transferFunds(address payable _to, uint _amount) public {
    (bool success, ) = _to.call{value: _amount}("");
    require(success, "Transfer failed");
    }

}

contract B {

    MyContract mycontract;

    constructor(address _contract) {
        mycontract = MyContract(_contract);
    }

    function testTry(address payable _to, uint _amount) public returns(string memory) {
        try mycontract.transferFunds(_to,_amount) {
            return "Success";
        } catch {
            return "Failed";
        }
    }

}
