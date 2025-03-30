//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Ek contract likh jisme uint, bool, address state variables ho aur ek function jo inki default values return kare.

contract MyContract {
    address a;
    uint b;
    bool c;


    function changeDefaultValue() public view returns(address, uint, bool){
        return (a,b,c);
    }
}