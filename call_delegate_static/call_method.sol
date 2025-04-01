// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// Que- Write a function that interacts with another contract to set a value using the call method.

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
        (bool success, bytes memory returnData ) = target.call(abi.encodeWithSignature("setValue(uint256)", _value));
        require(success,string(returnData));
    }
}

contract caller2 {
    Target targetAddress;

    constructor(address _targetAddress) {
        targetAddress = Target(_targetAddress);
    }

    function CallSetValue(uint _value) public {
       targetAddress.setValue(_value);
    }

}