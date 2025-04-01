# artNFT
AI-Generated NFT Smart Contract

This project is a Solidity smart contract that allows minting AI-generated NFTs with dynamic metadata. Each NFT is assigned a unique ID and an auto-generated metadata URL.

Features

Mint AI-generated NFTs.

Dynamic metadata generation.

Track NFT ownership.

Smart Contract Address

[INSERT CONTRACT ADDRESS HERE]

Functions

1. mintNFT()

Mints a new NFT with a unique ID and assigns it to the caller.

2. ownerOf(uint256 tokenId) -> address

Returns the owner of the specified token ID.

3. getMetadata(uint256 tokenId) -> string

Retrieves the dynamically generated metadata URL for a token.

Metadata Format

The metadata follows the format:

https://ai-art.example/api/metadata/{tokenId}

Deployment Steps

Compile the contract using Solidity 0.8.0 or later.

Deploy the contract on the Ethereum network.

Store the contract address in the provided section above.

Use the contract functions to mint and manage NFTs.

License

This project is released under the MIT License.

