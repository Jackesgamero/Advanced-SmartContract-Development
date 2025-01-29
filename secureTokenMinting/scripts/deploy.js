const { ethers } = require("hardhat");

async function main() {
    const ContractFactory = await ethers.getContractFactory("Token");
    console.log(" Deploying SecureTokenMinting.sol! ");
    const contractInstance = await ContractFactory.deploy();

    await contractInstance.waitForDeployment();
    console.log("SecureTokenMinting deployed address ", await contractInstance.getAddress());

}

main();