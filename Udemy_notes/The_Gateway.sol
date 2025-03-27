// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Exercise- The Gateway Exercise:
1. Create 3 contracts C, D, and E
2. Do the following in contract C:
a. Create an integer state variable called data which can only be used internally and not at all in any other contract.
b. Create an integer state variable called info which can be called both inside and outside the contract.
c. Immediately initialize info's value to 10 within a constructor.
d. Create a function called increment which can only be used internally and not at all in any other contract.

It should take an input integer called a and be read-only, returning the calculation of its input a + 1.
e. Write a function called updateData which takes an integer

The function should be able  argument called a and sets data to the argument.to be called both inside and outside the contract.
f. Write a read-only function called getData which returns the value of data and can be called both inside and outside the contract.
g. Write a read-only function called compute which calculates and returns two integer arguments a + b.

The function should only be used internally or by derived contracts.

Do the following in contract D:
a. Derive contract C to a new variable c and set a new instance of the contract to it.
b. Write a read-only function called readInfo which returns the info from contract C.

This function can be called both inside and outside the contract.

Do the following in contract E:
a. Inherit contract C into E with the special keyword is.
b. Create an integer called result which can only be used internally and not even by derived contracts.
c. Create a private variable c which inherits the contract C.
d. Immediately set the variable c to a new instance of contract C upon deployment with a constructor.
e. Write a function called getComputedResult which sets the values of 23 and 5 to the compute function in C 
    to the var result the function can be called both externally and internally

This function can be used both externally and internally.
f. Create a public read-only function called getResult which returns the variable result.
g. Create a read-only function which returns the info variable from contract C and set the function to be used both externally and internally.

FInal: Celebrate completing this dang long exercise because you deserve it!!!
*/

contract C {

    uint private data;
    uint public info;

    constructor () {
        info = 10;
    }

    function increment(uint a) private pure returns(uint) {return a + 1;}

    function updateData(uint a) public {data = a;}

    function getData() public view returns(uint) {return data;}

    function compute(uint a, uint b) internal pure returns(uint) {return a + b;}
    
}

contract D {

    C c = new C();

    function readInfo() public view returns(uint) { return c.info();}

}

contract E is C {

    uint private result;

    C private c;

     constructor() {
        c = new C();  // Private instance of contract C
    }

    function  getComputedResult() public { result = compute(23, 5);}

    function getResult() public view returns(uint) { return result;}

    function getNewInfo() public view returns(uint) { return c.info();}

}


// Only for understanding basic logics.