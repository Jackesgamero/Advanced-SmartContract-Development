// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SecureWithdrawal {
    mapping(address => uint256) public balances;
    bool private locked = false;

    modifier noReentrancy() {
        require(!locked, "Reentrancy attack detected!");
        locked = true;
        _;
        locked = false;
    }

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external noReentrancy {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        (bool success, ) = payable(msg.sender).call{value: amount}("");
        require(success, "Transfer failed");
    }

    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
