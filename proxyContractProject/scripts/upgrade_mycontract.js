const { ethers, upgrades } = require("hardhat");

async function main() {
    const myContractV2 = await ethers.getContractFactory("MyContractV2");
    console.log(" Contract is upgrading...");
    await upgrades.upgradeProxy("0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9", myContractV2);
    console.log("MyContract upgraded to MyContractV2");
}

main();