const { ethers } = require("hardhat");

async function main() {
    const ContractFactory = await ethers.getContractFactory("SecureCounterIncrement");
    console.log(" Deploying SecureCounterIncrement.sol!");
    const contractInstance = await ContractFactory.deploy();

    await contractInstance.waitForDeployment();
    console.log("SecureCounterIncrement deployed address ", await contractInstance.getAddress());
}

main();