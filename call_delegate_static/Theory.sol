// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

/*
1. Call vs DelegateCall vs StaticCall

CALL:

This is a low-level function used to interact with other contracts. 
It allows you to send ether and call functions from other contracts. 
The most important thing is that it does not preserve the state, meaning that 
it doesn't preserve the context (i.e., msg.sender, msg.value).

(bool success, bytes memory data) = address(contractAddress).call(abi.encodeWithSignature("functionName(arg1, arg2, ...)"));

*/

/*
DELEGATECALL:

Similar to call, but it preserves the context of the current contract. 
This means that msg.sender, msg.value, and storage are preserved from the calling contract.
This is mostly used in upgradeable contract patterns.
This is risky, and should be used cautiously, as it allows the target contract to alter 
the state of the calling contract.

(bool success, bytes memory data) = address(contractAddress).delegatecall(abi.encodeWithSignature("functionName(arg1, arg2, ...)"));

*/

/*
STATICCALL:

staticcall:

This is a variant of call but ensures that no state-changing operations 
(like writing to storage) can happen. This is ideal for reading data from another 
contract without modifying any state.

(bool success, bytes memory data) = address(contractAddress).staticcall(abi.encodeWithSignature("functionName(arg1, arg2, ...)"));


*/
