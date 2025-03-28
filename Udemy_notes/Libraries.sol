// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


/* Libraries are similar to contracts but are mainly intended for reuse. A library contain functions which other contracts can call.
    Solidity have certain restrictions on use of library. Following are the key characteristics:

    1. Library Function can be called directly if they do not modify the state.
        This means pure and view function can only be called from outside library.

    2. Library cannot be dstroyed as it is assumed to be stateless.

    3. A library cannot have state variables.

    4. A library cannot inherit any element.

    5. A library cannot be inherited.
*/

library Search {
    // we want this loops to return the index value of some integer we are searching for
    function indexOf(uint[] storage self, uint value) public view returns(uint) {
        for (uint i=0; i < self.length; i++)  if(self[i] == value) return i;
    }
}

contract Test {
    uint [] data;

    constructor()  {
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent(uint val) external view returns(uint) {
        uint value = val;
        uint index = Search.indexOf(data, value);
        return index;

    }
}

/* The directive using A for B: can be used to attach library functions of library A to a given type B.
    These functions will use the called type as their first parameter (identical using self)

Exercise: 
1. COpy over the library Search and the contract Test below
and rename library Search to Search2 and contract Test to Test2.

2. Using the A for B library pattern assign the new library to an empty array type and reqrite the code so that we can run the same 
    search hardcoded this time to the value of 4 accordingly.
*/


library Search2 {
    // we want this loops to return the index value of some integer we are searching for
    function indexOf(uint[] storage self, uint value) public view returns(uint) {
        for (uint i=0; i < self.length; i++)  if(self[i] == value) return i;
    }
}

contract Test2 {
    // using A(library) for B(another element)
    using Search2 for uint[];
    uint [] data;

    constructor()  {
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent() external view returns(uint) {
        uint value = 4;
        uint index = data.indexOf(value);
        return index;

    }
}