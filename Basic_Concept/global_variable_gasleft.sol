//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Que: Ek function likh jo gasleft() return kare aur ek dummy 
loop daal ke check kare gas ka impact.
*/

contract MyContract {

    function gasLeft() public view returns(uint) {
        return gasleft();
    }

    function dummy() public payable returns(uint) {
        uint gasBefore = gasleft();
        for (uint i=0; i < 5; i++) {} 
        uint gasAfter = gasleft(); 

        return gasAfter - gasBefore;
        
    }
}