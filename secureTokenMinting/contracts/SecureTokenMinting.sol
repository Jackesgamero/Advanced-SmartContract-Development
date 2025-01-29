// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    mapping(address => uint256) public balances;
    uint256 public totalSupply;

    function mint(uint256 amount) external {
        require(totalSupply + amount >= totalSupply, "Overflow detected");
        balances[msg.sender] += amount;
        totalSupply += amount;
    }

    function burn(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        totalSupply -= amount;
    }
}
