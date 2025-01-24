const { ethers, upgrades } = require("hardhat");

async function main() {
    const myContract = await ethers.getContractFactory("MyContract");
    console.log(" Deploying MyContract! ");
    const myContract1 = await upgrades.deployProxy(myContract, [20], {
        initializer: "setValue",
    });

    await myContract1.waitForDeployment();
    console.log("MyContract deployed address ", await myContract1.getAddress());
    // 0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9
}

main();