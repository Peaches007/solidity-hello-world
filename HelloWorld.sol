// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract HelloWorld {
    string public name;
    string public greetingPrefix = "Hello ";

    constructor(string memory firstPerson) {
        name = firstPerson;
    }

    function createPerson(string memory newPerson) public {
        name = newPerson;
    }

    function greeting() public view returns(string memory) {
        return string(abi.encodePacked(greetingPrefix, name));
    }
}