//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AccessControl {
    address public immutable owner;
    mapping(address => bool) public admins;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    modifier onlyAdmin() {
        require(admins[msg.sender], "Only admins can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function addAdmin(address newAdmin) external onlyOwner {
        admins[newAdmin] = true;
    }

    function removeAdmin(address adminToRemove) external onlyOwner {
        admins[adminToRemove] = false;
    }
}
