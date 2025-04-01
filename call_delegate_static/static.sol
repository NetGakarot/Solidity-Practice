// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;


//Que- Implement a function that reads the value from another contract using staticcall.


contract Target {

    uint value;
    
    function setValue(uint _value) public {
        value = _value;
    }
    function getValue() public view returns(uint) {
        return value;
    }
}

contract Caller {
    address target;

    constructor(address targetAddress) {
        target = targetAddress;
    }

    function CallGetetValue() public view returns(uint) {
        (bool success, bytes memory returnData ) = target.staticcall(abi.encodeWithSignature("getValue()"));
        require(success,"Static call failed");
        return abi.decode(returnData, (uint));
    }
}

