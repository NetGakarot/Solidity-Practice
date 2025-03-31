// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*Theory:

 Receiving & Sending Ether (send, transfer, call)
Solidity has 3 methods for sending ether:

transfer	2300 gas	    Reverts on failure	        Safe
send	    2300 gas	    Returns false on failure	Not recommended
call	    No gas limit	Returns success flag	    Flexible but risky



contract SendEther {
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(msg.value);  // 2300 gas limit, reverts on failure
    }

    function sendViaSend(address payable _to) public payable {
        bool success = _to.send(msg.value);  // 2300 gas, returns false on failure
        require(success, "Send failed");
    }

    function sendViaCall(address payable _to) public payable {
        (bool success, ) = _to.call{value: msg.value}("");  // No gas limit, returns success flag
        require(success, "Call failed");
    }
}


Fallback & Receive Functions
Agar koi contract Ether receive kare bina kisi function call ke, to receive() ya fallback() function run hota hai.


receive()	When plain Ether is sent	          Yes
fallback()	When no matching function is found	  Optional

Example:




contract EtherReceiver {
    event Received(address sender, uint amount);

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    fallback() external payable {
        emit Received(msg.sender, msg.value);
    }
}
🔹 receive() chalega agar contract ko sirf Ether mila.
🔹 fallback() chalega agar koi unknown function call ho ya receive() function na ho.




*/