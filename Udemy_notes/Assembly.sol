// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
Solidity provides an option to use assembly language to write inline assembly within Solidity Source code.

Assembly is a low level language that allows you to directly manipulate the EVM (more dangerous and not recommended)

EVM = smart contracts are not the real code in the blockchain - solidity code is compiled to a lower level language,
*/

contract learnAssembly {

    function addToEVM() external {
        uint x;
        uint y;
        // uint z = x + y;

    // all of this is compiled to low level instructions (opcodes - in total there is around 100)

    // how to use assembly?
       assembly {

        // declare an assembly block
        // inside we can manipulate variables declared outside
        // no semi colon, = is actually := and we can bring in opcodes
        
            let z := add(x,y)

            // load data for a specific slot
            let a := mload(0x40)

            // store something temporary to memory

            mstore(a,4)

            // persistance storage
            sstore(a,100)

            // In EVM everything is stored in slots of 256bits (a uint occupies one slot) whereas mapping or array is several
    }

    }

    function addToEVM2() public view returns (bool success) {

        uint size;
        address addr;

    // Check wheether an address contains any bytes of code or not
        assembly {
            size := extcodesize(addr)
        }
        if(size > 0) {return true;
        } else {
            return false;
        }
    }



/*
Exercise:
The function addToEVM3 is attempting to convert data bytes.
It wants to convert using solidity a data byte into a fixed byte size.
However if you run the code the way it is the it will not compile successfully because
explicity type conersions are not allowed from bytes memory to bytes32.

Use Assemmbly and the mload to convert the data to bytes 32 successfully. Hint: Bytes in memory size starts at second slot 
so we need to bring in the add 32 to start at the correct position
*/

    function addToEVM3() external view returns(bool)  {
        uint x;
        uint y;
        uint z;
        bytes memory data = new bytes(10); 

        // we cannot convert this into in a fixed size

        //  but if we only care about the first 32 bytes we can use assembly.

        bytes32 dataB32;

        assembly {
            dataB32 := mload(add(data, 32))
        }

        
    }

}

 
 
