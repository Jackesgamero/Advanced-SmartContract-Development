const { ethers } = require("hardhat");

async function main() {
    const ContractFactory = await ethers.getContractFactory("SecureFundManagement");
    console.log(" Deploying SecureFundManagement.sol!");
    const contractInstance = await ContractFactory.deploy();

    await contractInstance.waitForDeployment();
    console.log("SecureFundManagement deployed address ", await contractInstance.getAddress());
}

main();