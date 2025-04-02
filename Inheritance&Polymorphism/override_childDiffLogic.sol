// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Write a contract where a function is overridden with different logic in different 
//  child contracts. Demonstrate function calls from each child.


contract Parent {

    address owner;
    uint amount;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyBy() {
        require(msg.sender==owner,"Not Authorized");
        _;
    }

    function setData(uint _amount) public virtual {
        amount = _amount;
    }
}

contract Child1 is Parent {

    function setData(uint _amount) public override onlyBy {
        super.setData(_amount);
    }
}

contract Child2 is Parent {
        function setData(uint _amount) public override  {
        require(_amount > 0," Amount cant be zero");
        super.setData(_amount);

}
}