//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SecureCounterIncrement {
    uint256 public counter;

    function increment(uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        counter += amount;
    }
}
