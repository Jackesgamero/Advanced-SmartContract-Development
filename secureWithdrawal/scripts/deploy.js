const { ethers } = require("hardhat");

async function main() {
    const myContract = await ethers.getContractFactory("SecureWithdrawal");
    console.log(" Deploying SecureWithdrawal! ");
    const secureWithdrawal = await myContract.deploy();

    await secureWithdrawal.waitForDeployment();
    console.log("MyContract deployed address ", await secureWithdrawal.getAddress());

    // 0x5FbDB2315678afecb367f032d93F642f64180aa3
}

main();