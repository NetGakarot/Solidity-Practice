//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
Solidity provide inbuilt cryptography hash functions well:
Following are important:

keccak256(bytes memory) returns (bytes32)
sha256(bytes memory) returns (bytes32)
ripend160(bytes memory) returns (bytes20)

keccak is a leading hashing function.
Keccak is a family of cryptography sponge function.
*/

contract GeneraterandomNumber {

    function randMod(uint range) external view returns(uint) {
        // grab information from the blockchain randomly to generate random numbers- we need something dynamically changing
        // abi.encodePacked concatenates arguments nicely

        return uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender))) % range;
    }
}

/* Exercise:
    Create a contract Oracle with an address datatype called admin and a public integer called rand.
    Create a constructor and set the admin to the current caller
    Write a function which takes the input of an integer and sets the state variable rand to that integer.
    Require that the current caller must equal the admin.
    Set the oracle contract to a new variable called oracle in the GenerateRandomNumber contract.
    Write a constructor in the GenerateRandomNumber contract which sets the oracle to a deployement address of the Oracle
    Modify the hash return so that miners lose control manipulation to the random generation
    Successfully deploy and test the results
*/

contract Oracle {
    address admin;
    uint public rand;

    constructor () { admin = msg.sender;}

    function setRand(uint a) public {
        require(msg.sender==admin);
        rand = a;
    }
}

contract GenerateRandomNumber {
    address oracle;

    constructor(address _oracle) {
        oracle = _oracle;
    }

    function randMOD() external view returns (uint) {
        return uint(keccak256(abi.encodePacked(Oracle(oracle).rand(),block.timestamp, block.difficulty, msg.sender))) % Oracle(oracle).rand();
    }

}
