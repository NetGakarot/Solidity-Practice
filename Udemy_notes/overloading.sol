//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
Function overloading:
    You can have multiple definitions for the same function name in the same scope
    The definiton of the function must differ from each other by the type and/or the number of arguments in the argument list
    You cannot overload function declarations that differ only by return type
*/    

contract functionOverloading {

    function x(uint lightswitch, uint wallet) public {

    }

    function x(uint wallet) public {

    }

}

/* Exercise:
    Create two function with the same name that return the sum of their arguments
    one function which takes two arguments and another function which take three arguments.
    Create two other function which can call each sum function and return their various sum.
*/

contract OverloadingExercise {

    function sum(uint a, uint b) private pure returns(uint) {
       return a+b;
    }

    function sum(uint a, uint b, uint c) private pure returns(uint) {
        return a+b+c;
    }

    function getSum(uint x, uint y) public pure returns(uint) {
        return sum( x, y);
    }

    function getSum(uint x, uint y, uint z) public pure returns(uint) {
        return sum( x, y, z);
    }


}

