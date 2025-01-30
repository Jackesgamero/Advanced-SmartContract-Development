const { ethers } = require("hardhat");

async function main() {
    const ContractFactory = await ethers.getContractFactory("AccessControl");
    console.log(" Deploying SecureAccessControl.sol!");
    const contractInstance = await ContractFactory.deploy();

    await contractInstance.waitForDeployment();
    console.log("SecureAccessControl deployed address ", await contractInstance.getAddress());
}

main();