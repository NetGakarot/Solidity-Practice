// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Que- Create an abstract contract Bank with a function getInterestRate().
//   Inherit it in SavingsAccount and LoanAccount, providing different interest rates.


abstract contract Bank {

    function getInterestRate() public virtual pure returns(uint);
}

contract SavingsAccount is Bank {
    uint private constant interest = 6;
    

    function getInterestRate() public pure override returns(uint) {
        return interest;
    }
}

contract LoanAccount is Bank {
        uint private constant interest = 18;
    
    function getInterestRate() public pure override returns(uint) {
        return interest;
    }
}