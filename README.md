# BasicNft Smart Contract

## Description
The `BasicNft` smart contract is a simple ERC721-compliant non-fungible token (NFT) contract built on the Ethereum blockchain. It allows for the creation, minting, and management of NFTs with a token URI to link metadata.

### Contract Features
- **Token Name:** Doggie
- **Token Symbol:** DOG
- **Minting Functionality**: Allows users to mint a new NFT with a specified token URI.
- **Token URI**: Stores the URI associated with each token for linking external metadata.

### How It Works
1. **Minting an NFT**:
   - `mintnft(string memory tokenUri)`: This function allows any user to mint an NFT by providing a unique URI. The URI is stored in the contract and associated with the new token ID.
   - The token ID increments automatically with each new mint.

2. **Retrieving Token URI**:
   - `tokenURI(uint256 tokenID)`: Returns the URI associated with the given token ID. This function overrides the `ERC721` standard to provide a specific URI for each token.

### Deployment
The contract is deployed at the address:
- **Deployed at**: `0x41B6805b9e91bd46087E9bCEAA6141D16b4D567D`

### Example Usage
To interact with this contract, you can use tools like Foundry or ethers.js to mint new tokens and retrieve their URIs:

1. **Mint a new NFT**:
   ```solidity
   // Replace with your private key, RPC URL, and token URI
   const contractAddress = "0x41B6805b9e91bd46087E9bCEAA6141D16b4D567D";
   const tokenUri = "https://example.com/token-metadata.json";

   const contract = new ethers.Contract(contractAddress, BasicNft.abi, signer);
   await contract.mintnft(tokenUri);

   
Setup

1.Clone this repository.

2.Install dependencies using npm install or yarn install.

3.Deploy the BasicNft contract using Foundry or Remix.

4.Interact with the deployed contract by setting up your wallet and provider.

License

This project is licensed under the MIT License. See the LICENSE file for more information.

