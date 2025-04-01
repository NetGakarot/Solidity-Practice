// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
STRUCTS-
A struct in Solidity is a user-defined data type that allows you to group multiple 
variables of different types under a single name. It helps in organizing related data efficiently.

contract StructExample {
    struct Student {
        string name;
        uint age;
        address wallet;
    }

    Student public s1; // Struct variable

    function setStudent(string memory _name, uint _age, address _wallet) public {
        s1 = Student(_name, _age, _wallet); // Assigning values
    }
}

MAPPING-
A mapping in Solidity is a key-value data structure that allows you to store and retrieve values
efficiently using a unique key. It is similar to a dictionary or hash table in other programming languages.

Default values: If a key is not set, it returns a default value (e.g., 0 for integers).

No iteration: Mappings cannot be iterated because they do not store keys like an array.

Efficient lookups: You can retrieve values quickly using the key.

It is always stored in storage.

contract MappingExample {
    mapping(address => uint) public balances;

    function setBalance(address _user, uint _amount) public {
        balances[_user] = _amount;
    }

    function getBalance(address _user) public view returns (uint) {
        return balances[_user];
    }
}

ARRAYS-
An array is a data structure that allows storing multiple values of the same type in a 
sequential manner.
Types of Arrays

Fixed-size Arrays → Arrays with a predefined length.
uint[3] public numbers = [1, 2, 3]; // Fixed array with size 3

Dynamic Arrays → Arrays without a predefined length.
uint[] public numbers; // Dynamic array

function addNumber(uint _num) public {
    numbers.push(_num); // Adding elements dynamically
}

Memory Arrays → Temporary arrays stored in memory, not in blockchain storage.
function getTempArray() public pure returns(uint[] memory) {
    uint ;
    tempArray[0] = 1;
    tempArray[1] = 2;
    tempArray[2] = 3;
    return tempArray;
}

Can arrays be stored in mappings?
mapping(address => uint[]) public userTransactions; 

Functions of arrays:

push() and pop() are only used in dynamic arrays in Solidity.

1. push() → Adds a new element to the end of a dynamic array.
uint[] public numbers;

function addNumber(uint _num) public {
    numbers.push(_num); // Adds _num to the array
}

2. pop() → Removes the last element from a dynamic array.
function removeLast() public {
    require(numbers.length > 0, "Array is empty");
    numbers.pop(); // Removes the last element
}

3. Delete an Element (delete)
Removes an element but does not shrink the array size (resets the value to default).
delete people[1]; // Sets people[1] to default ("" for string, 0 for uint)

To remove an element properly, shift all elements left and shrink the array.
function remove(uint index) public {
    require(index < people.length, "Index out of bounds");
    for (uint i = index; i < people.length - 1; i++) {
        people[i] = people[i + 1]; // Shift left
    }
    people.pop(); // Remove the last duplicate element
}

4. Clearing an Array
delete people; // Resets the entire array


NESTED MAPPING AND STRUCTS:

Nested structures complex data are useful for storage.

Example: Nested Mapping

contract NestedMapping {
    mapping(address => mapping(string => uint)) public balances;

    function setBalance(address _user, string memory _token, uint _amount) public {
        balances[_user][_token] = _amount;
    }

    function getBalance(address _user, string memory _token) public view returns (uint) {
        return balances[_user][_token];
    }
}

Example: Struct Inside Struct

contract NestedStruct {
    struct Player {
        string name;
        uint score;
    }

    struct Team {
        string teamName;
        Player captain;
    }

    Team public myTeam;

    function setTeam(string memory _teamName, string memory _captain, uint _score) public {
        myTeam = Team(_teamName, Player(_captain, _score));
    }
}


ENUMS:

An enum (short for enumeration) is a user-defined type that lets you create a set of named 
constant values. It helps in representing a state in a readable and manageable way.

contract EnumExample {
    enum Status { Pending, Shipped, Delivered, Cancelled } // Enum declaration
    Status public orderStatus;

    function setShipped() public {
        orderStatus = Status.Shipped;
    }
}

Default value is the first in the list (Pending = 0).
You can update it using direct assignment.
It helps in state management for contracts like orders, auctions, etc.
*/