// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract HelloWorld {
    string public name;
    // string public greetWorld = "Hello World!"
    string public greetingPrefix = "Hello ";

    constructor(string memory firstPerson) {
        name = firstPerson;
    }

    function createPerson(string memory newPerson) public {
        name = newPerson;
    }

    function greetPerson() public view returns(string memory) {
        return string(abi.encodePacked(greetingPrefix, name));
    }
}