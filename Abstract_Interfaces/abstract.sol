// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Create an abstract contract Shape with a function area(). Implement it in Rectangle
//   and Circle contracts.

abstract contract Shape {

    function area(uint num) public virtual returns(uint);
}


contract Square is Shape {

    function area(uint num) public pure override returns(uint) {
        return num*num;
    }
}

contract Circle is Shape {
    uint constant PI = 3141592653589793238;
    function area(uint num) public pure override returns(uint) {
        return (PI*num*num)/10**18;
    }
}
