# Overview

What is URI?   
A URI is a string containing characters that identify a physical or logical resource. URI follows syntax rules to ensure uniformity. Moreover, it also maintains extensibility via a hierarchical naming scheme. The full form of URI is Uniform Resource Identifier.

Types of URI:

- URL
- URN
  https://viblo.asia/p/tim-hieu-ve-uri-url-va-urn-maGK7WxaKj2

1. Get IPFS
2. Add tokenURI json file to IPFS
3. Add IPFS URI to your NFT URI

We go through creating 3 different kinds of NFTs.
3 contracts:
1. A Basic NFT
2. Random IPFS NFT (IPFS Hosted NFT)

- That uses Randomness to generate a unique NFT
Pros: Cheap
Cons: Someone needs to pin our data

3. Dynamic SVG NFT (Hosted 100% on-chain)

- Uses price feeds to be dynamic
Pros: The data is on chain!
Cons: MUCH more expensive!

If price of ETH is above X -> Happy
If it's below -> Frown face

## Pinata
Pinata is an NFT media management service that allows users to host, manage and share files of any kind on the blockchain of their choice. As an IPFS pinning service, we focus on giving both technical and non-technical creators a fast, easy, and reliable way to share content without limits.
For developers, Pinata is the easiest way to pin content to IPFS and build web3 applications without having to build and manage your own IPFS nodes. We do all the heavy lifting for you.

All about methods:
*https://www.npmjs.com/package/@pinata/sdk#pinFileToIPFS-anchor*

## What is an SVG
- Scalable Vector Graphics
*https://www.w3schools.com/graphics/svg_intro.asp*

# Test on Opensea (testnets.opensea.io)
Sepolia is not supported chain by OpenSea.
So if we want test NFT in OpenSea, we have to use mumbai (polygon testnet) chain.
All config for mumbai are on hardhat.config.js and helper-hardhat-config.js.

**Price Feed Chainlink is not supporter for mumbai so we can only test with VRF (random NFT).**
Run commands for testing on mumbai: (Only test with RandomIpfsNft).

*Deploy NFT contract*
```
yarn hardhat deploy --network mumbai --tags randomipfs
```
*Mint NFT*
```
yarn hardhat deploy --tags mint-mumbai --network mumbai
```