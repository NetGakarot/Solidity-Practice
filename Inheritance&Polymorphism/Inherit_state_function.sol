// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Create a contract Base with a function that updates a state variable.
//  Inherit this contract and modify the function to add a condition before updating.

contract Base {

    uint public amount;

    function setData(uint _amount) public virtual  {
        amount = _amount;
    }
}

contract Derived is Base {

    function setData(uint _amount) public override {
        require(_amount > 0,"Amount Cant be zero");
        super.setData(_amount);

        
    }
}
