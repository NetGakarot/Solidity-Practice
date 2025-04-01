// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;


//Que- Using delegatecall, update the state variable of the calling contract (not the target contract)

contract Target {

    uint public value;
    
    function setValue(uint _value) public {
        value = _value;
    }
}

contract Caller {
    address target;


    constructor(address targetAddress) {
        target = targetAddress;
    }

    function CallSetValue(uint _value) public {
        (bool success, ) = target.delegatecall(abi.encodeWithSignature("setValue(uint256)", _value));
        require(success,"Delegate call failed!");
    }
}
