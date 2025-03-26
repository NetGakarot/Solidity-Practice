//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract learnEtherUnits {

    function test() public pure {

        assert(1000000000000000000 wei == 1 ether); // 10^18 wei = 1Eth
        assert(1 wei == 1); // 1 wei = 1

        assert(1 ether == 1e18);
    }
}

/* Exercise:
        Create the following assertions:
        Assert equivalencies for minutes to seconds, hours to minutes, days to hours and weeks to days.
*/

contract assertExercise {

    function time() public pure {
        assert(1 minutes == 60 seconds);
        assert(1 hours == 60 minutes);
        assert(1 days == 24 hours);
        assert(1 weeks == 7 days);

    }
}