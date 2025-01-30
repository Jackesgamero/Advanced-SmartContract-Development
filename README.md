# Advanced-SmartContract-Development

This repository contains the code developed during Educba's SmartContract development courses available on the Coursera platform. For each of the implementations the Hardhat framework has been used.

## 📄 Proxy Upgrade Implementation with Hardhat and Ethers.js

This project consist on implementing a proxy upgrade pattern using Hardhat and Ethers.js. The project will involve deploying a main smart contract, creating an upgradable contract with new functionalities, and writing scripts to upgrade the main contract seamlessly.


### 📌 Project Objectives:

- Develop a main smart contract with basic functionality.
- Deploy the main smart contract using Hardhat and Ethers.js.
- Create an upgradable contract with additional functionalities.
- Implement the proxy upgrade pattern to upgrade the main contract with the upgradable contract.
- Write scripts to facilitate the upgrade process and verify the functionality.


## 📄 Secure Withdrawal Smart Contract Implementation

The goal of this project is to implement a secure withdrawal smart contract that allows users to withdraw funds without being susceptible to reentrancy attacks.

### 📌 Project Objectives:

- Write the withdraw function to allow users to securely withdraw funds from their balances.
- Implement mechanisms to prevent reentrancy attacks, such as locking the withdrawal process while it is in progress.
- Deploy the smart contract to the Ethereum blockchain using tools like Remix, Truffle, or Hardhat.
- Optimize the code for gas efficiency and overall performance on the Ethereum network.

## 📄 Secure Token Minting Smart Contract Implementation

The challenge of this project is to create a smart contract that prevents overflow and underflow vulnerabilities while minting tokens, ensuring the integrity and security of the token supply.
The project was intended to use SafeMath but due to changes in the Solidity compiler in new versions this is no longer necessary

### 📌 Project Objectives:

- Design the structure of the token smart contract, including state variables and functions required for minting and burning tokens.
- Write the mint function to allow the contract owner or authorized parties to mint new tokens securely.
- Write the burn function to allow token holders to burn their tokens securely.
- Deploy the smart contract to the Ethereum blockchain using tools like Remix, Truffle, or Hardhat.

## 📄 Secure Access-Controlled Smart Contract Implementation

The goal of this project is to implement a smart contract with robust access control mechanisms that allow only the owner to update certain data, providing a secure and transparent solution for controlling access to critical functions or resources.

### 📌 Project Objectives:

- Design the structure of the access-control smart contract, including state variables, modifiers, and functions for managing access control.
- Write modifiers (onlyOwner, onlyAdmin) to restrict access to certain functions based on the caller's role (owner or admin).
- Ensure that only the contract owner can add or remove admins.
- Implement functions to allow the contract owner to add or remove admins, granting or revoking their access rights.
- Deploy the smart contract to the Ethereum blockchain using tools like Remix, Truffle, or Hardhat.




