const { ethers } = require("hardhat");

async function main() {
    const ContractFactory = await ethers.getContractFactory("SecureDDOS");
    console.log(" Deploying SecureDDOS.sol");
    const contractInstance = await ContractFactory.deploy();

    await contractInstance.waitForDeployment();
    console.log("SecureDDOS deployed address ", await contractInstance.getAddress());
}