// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Pehla contract (A)
contract A {
    uint public num;

    function setNum(uint _num) public {
        num = _num;
    }

    function getNum() public view returns (uint) {
        return num;
    }
}

// Dusra contract (B), jo `A` ka instance store karega
contract B {
    A public a; // Contract A ka instance

    constructor(address _a) {
        a = A(_a); // Contract A ka address se instance create ho raha hai
    }

    function readFromA() public view returns (uint) {
        return a.getNum(); // Contract A ka function call kar rahe hain
    }

    function writeToA(uint _num) public {
        a.setNum(_num); // Contract A ka function call karke `num` update kar rahe hain
    }
}
