//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Define fallback function:
    Cannot have a name
    Does not take any inputs
    Does not return any outputs
    Must be declared as external

Why use it: When you call func that does not exist or send ether to a contract by send, transfer or call
Statement: send and transfer method receive 2300 gas but call method receive more(all of the gas)
*/

event Log(uint gas);

contract FallBack {
    fallback() external payable {
        // not recommended to write much code in here

        
        // invoke send and transfer: we get 2300 gas which is enough to emit a log
        // invoke call: we get all the gas
        
        // special solidity function gasLeft returns how much gas is left
        emit Log(gasleft());
     }

     function getBalance() public view returns(uint) {
        return address(this).balance;
     }
}

// new contract will send ether to Fallback contract which will trigger fallback function

contract SendToFallback {

        function transferToFallback(address payable _to) public payable {
            // send ether with the transfer method
            // automatically transfer will transfer 2300 gas amount

            _to.transfer(msg.value);
        }

        function callToFallback(address payable _to) public payable {
            (bool sent,) = _to.call{value:msg.value}('');
            require(sent, 'Failed to send!');
        }
}
