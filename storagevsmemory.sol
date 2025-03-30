//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


/* Que: Ek uint[] array banao contract storage me.

Ek function likh jo isko memory me copy kare, pehle element ko 
change kare, aur dono compare kare.
*/

contract MyContract {

    uint [] list = [1,2,3];

    function data() public view returns(uint[] memory, uint[] memory) {
        uint [] memory _newList = list;
        _newList[0] = 10;
        return (list, _newList);
    }

}

// If you use memory it will create a independent copy.
// If you use storage then it will change the value of state variable.

contract MyContract2 {

    uint[] list = [1, 2, 3];

    function updateStorage() public {
        uint[] storage _newList = list; // Storage reference
        _newList[0] = 10;  // This will modify the original list
    }

    function getList() public view returns (uint[] memory) {
        return list;
    }
}