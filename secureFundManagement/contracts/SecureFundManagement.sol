//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SecureFundManagement {
    enum Error {
        None,
        InsufficientBalance,
        NotAuthorized
    }

    uint256 public balance;
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit(uint256 amount) external {
        balance += amount;
    }

    function withdraw(uint256 amount) external returns (Error) {
        if (msg.sender != owner) {
            return Error.NotAuthorized;
        }

        if (amount > balance) {
            return Error.InsufficientBalance;
        }

        balance -= amount;
        return Error.None;
    }
}
