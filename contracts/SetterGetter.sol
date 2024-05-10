// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract SetterGetter {
    string name;
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    constructor (address _owner) {
        owner = _owner;
    }

    function setName (string memory _name) public onlyOwner {
        name = _name;
    }

    function getName () view public returns (string memory) {
        return name;
    }
}