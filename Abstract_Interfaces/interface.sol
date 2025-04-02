// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Create an interface IVehicle with a function startEngine().
//   Implement it in Car and Bike.

interface IVehicle {

    function startEngine() external pure returns(string memory);
    
}

contract Car is IVehicle {
    function startEngine() public pure override  returns(string memory) {
        return "Car engine started";
    }
}
contract Bike is IVehicle {
    function startEngine() public pure override  returns(string memory) {
        return "Bike engine started";
    }
}