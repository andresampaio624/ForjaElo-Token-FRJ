// SPDX-License-Identifier: MIT
/**
 * ForjaElo NFT Deployment Script
 * Deploys the ForjaEloNFT contract and initializes with IPFS metadata
 * 
 * Usage: npx hardhat run scripts/deployNFT.js --network <network-name>
 */

const hre = require("hardhat");

async function main() {
  console.log("\n🔥 ForjaElo NFT Deployment Script");
  console.log("==================================\n");

  // Get deployer account
  const [deployer] = await ethers.getSigners();
  console.log(`Deploying with account: ${deployer.address}\n`);

  // Define metadata base URI (IPFS)
  // Replace with your actual IPFS hash
  const IPFS_BASE_URI = "ipfs://QmYourIPFSHashHere/";
  
  console.log(`Metadata Base URI: ${IPFS_BASE_URI}`);
  console.log("Deploying ForjaEloNFT contract...\n");

  // Deploy ForjaEloNFT
  const ForjaEloNFT = await ethers.getContractFactory("ForjaEloNFT");
  const forjaEloNFT = await ForjaEloNFT.deploy(IPFS_BASE_URI);
  await forjaEloNFT.deployed();

  console.log(`✅ ForjaEloNFT deployed to: ${forjaEloNFT.address}`);
  console.log("\n" + "=".repeat(50));
  console.log("\n📊 7 Elos NFT Collection:");
  console.log("  1. 🔥 CHAMA   - Amor/Propósito");
  console.log("  2. 🏞️ REFÚGIO - Alma/Liderança");
  console.log("  3. ⚡ POTÊNCIA - Força/Hábito");
  console.log("  4. 🎯 CENTRAL - Verdade/Sistema");
  console.log("  5. 🎨 TALENTO - Valor/Domínio");
  console.log("  6. 🏃 ATLETA  - Corpo/Forma");
  console.log("  7. 💡 IDÉ     - Servir/Conexão");
  console.log("\n" + "=".repeat(50));

  // Store deployment info
  const deploymentInfo = {
    network: hre.network.name,
    forjaEloNFTAddress: forjaEloNFT.address,
    baseURI: IPFS_BASE_URI,
    deployer: deployer.address,
    timestamp: new Date().toISOString(),
  };

  console.log("\n📝 Deployment Info:");
  console.log(JSON.stringify(deploymentInfo, null, 2));

  // Optionally verify on block explorer
  console.log("\n💻 Verify with:");
  console.log(`hardhat verify --network ${hre.network.name} ${forjaEloNFT.address} "${IPFS_BASE_URI}"`);

  // Initial minting (optional)
  console.log("\n🎁 Initial Minting Setup...");
  try {
    // Mint one of each Elo type to deployer as test
    const tokenIds = [1, 2, 3, 4, 5, 6, 7];
    const amounts = [1, 1, 1, 1, 1, 1, 1];
    
    const tx = await forjaEloNFT.mintBatch(
      deployer.address,
      tokenIds,
      amounts
    );
    
    console.log(`Mint tx: ${tx.hash}`);
    await tx.wait();
    console.log("✅ Initial minting complete!");
  } catch (error) {
    console.log("⚠️ Minting optional - can be done later");
  }

  console.log("\n" + "=".repeat(50));
  console.log("\n🎉 Deployment Complete!");
  console.log(`Contract: ${forjaEloNFT.address}`);
  console.log("\n" + "=".repeat(50) + "\n");

  return deploymentInfo;
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
