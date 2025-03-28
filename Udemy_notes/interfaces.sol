// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*INTERFACES:

Interfaces are similar to abstract contracts and are created using interface keyword.
Following are the key characteristics of an interface.

    Interface can not have any function with implementation.

    Functions of an interface can be only of type external.

    Interface cannot have contructor.

    Interface cannot have state variables.

    Interface can have enum, struct which can be accessed using interface name dot notations.
*/

contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }
}
// how do we interact with this contract without copy and pasting the code??
// Answer- Interface

interface ICounter {

    function count() external view returns(uint);
    function increment() external;
    
}

contract MyContract {
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }
    function getCount(address _counter) external view returns(uint) {
        return ICounter(_counter).count();
    }
}

/* 
Exercise Interfaces with Uniswap (Decentralized Exchange)
In Uniswap, each Uniswap smart contract, or pair, manages a liquidity pool made up of reserves of two ERC-20 tokens!
In this exercise, you are going to use the IDE to speak to Uniswap and get the reserves of a Uniswap pair of your choosing.

Instructions to complete this exercise:
Create two interfaces, each holding separate function signatures that you must look up in the Solidity docs (V2).

One interface will be called UniswapV2Factory, which will contain the function signature that gets pairs.

Another interface will be called UniswapV2Pair, which will contain the function signature to get reserve values.

Create a contract that contains addresses of the paired tokens you choose as well as the factory address.

Within the contract, make a function that can successfully get the pair of your tokens and set it to a single address.

Use that address to get the reserve values and finally return the reserve values.

Switch to Mainnet and connect MetaMask but DO NOT deploy the contract (or you will spend money!!!).

From the Mainnet, manually go through the steps of retrieving the values without deploying or spending gas!

Post your results of the reserve values in our Discord community and celebrate because you have seriously earned it!

*/

interface UniswapV2Factory {
    function getPair(address tokeA, address tokenB) external view returns (address pair);
}

interface UniswapV2Pair {
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTImestampLast);
    }

contract MContract2 {

    address private factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
    address private dai = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address private weth =  0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    function getReserveTOkens() external view returns(uint, uint) {
        address pair = UniswapV2Factory(factory).getPair(dai, weth);
        (uint reserve0, uint reserve1,) = UniswapV2Pair(pair).getReserves();
        return(reserve0, reserve1);
    }
}


