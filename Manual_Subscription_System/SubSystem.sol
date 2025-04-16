// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

/*10.Subscription System
Implement a subscription model where users pay Ether monthly. Track expiration and auto-renewals. 
Use timestamp logic, mapping, and modifiers.
*/

contract MyContract {
    address owner;
    uint monthlySubCharge = 0.01 ether;

    mapping(address => uint) public subRecord;
    mapping(address => bool) public isUser;

    event subStarted(address indexed user, uint timeStarted, uint timeExpiry);
    event renewed(address indexed user, uint timeStarted, uint timeExpiry);
    event withdraw(address indexed addr,uint amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyBy() {
        require(msg.sender==owner,"Not Authorized");
        _;
    }

    function changeOwner(address newOwner) public onlyBy {
        require(newOwner != address(0),"Invalid address");
        owner = newOwner;
    }

    function _startSub() public payable {
        require(msg.value==monthlySubCharge,"Incorrect amount");
        subRecord[msg.sender] = block.timestamp + 30 days;
        isUser[msg.sender] = true;
        emit subStarted(msg.sender, block.timestamp,subRecord[msg.sender]);
    }

    function renewSub() public payable {
        require(msg.value==monthlySubCharge,"Incorrect amount");
        require(subRecord[msg.sender] < block.timestamp,"Due date not reached");
        subRecord[msg.sender] += 30 days;
        emit renewed(msg.sender, block.timestamp,subRecord[msg.sender]);

    }

    function deposit() external payable {
        if (!isUser[msg.sender]) {
            _startSub();
        } else {
            renewSub();
        }
    }

    fallback() external payable {
        if (!isUser[msg.sender]) {
            _startSub();
        } else {
            renewSub();
        }
    }

    receive() external payable {
        if (!isUser[msg.sender]) {
            _startSub();
        } else {
            renewSub();
        }
    }

    function checkStatus(address user) public view returns (string memory status, uint expiry) {
        require(isUser[user],"User Not registered");
        uint expiryTime = subRecord[user];
        if (block.timestamp > expiryTime) {
        return ("Expired", expiryTime);
        } else {
        return ("Active", expiryTime);
        }
    }

    function withdrawAll(address addr) public onlyBy {
        require(addr != address(0),"Invalid address");
        uint amount = address(this).balance ;
        (bool success, ) = addr.call{value:amount}("");
        require(success,"Failed!");
        emit withdraw(addr, amount);
    }

}