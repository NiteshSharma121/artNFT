pragma solidity ^0.8.0;

contract AIGeneratedNFT {
    struct NFT {
        uint256 id;
        string metadata;
    }

    mapping(uint256 => NFT) private _nfts;
    mapping(uint256 => address) private _owners;
    uint256 private _nextId;

    function mintNFT() public {
        _nfts[_nextId] = NFT(_nextId, generateMetadata(_nextId));
        _owners[_nextId] = msg.sender;
        _nextId++;
    }

    function generateMetadata(uint256 tokenId) internal pure returns (string memory) {
        return string(abi.encodePacked("https://ai-art.example/api/metadata/", uint2str(tokenId)));
    }

    function uint2str(uint256 _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint256 j = _i;
        uint256 length;
        while (j != 0) {
            length++;
            j /= 10;
        }
        bytes memory bstr = new bytes(length);
        while (_i != 0) {
            length -= 1;
            bstr[length] = bytes1(uint8(48 + _i % 10));
            _i /= 10;
        }
        return string(bstr);
    }

    function ownerOf(uint256 tokenId) public view returns (address) {
        return _owners[tokenId];
    }

    function getMetadata(uint256 tokenId) public view returns (string memory) {
        return _nfts[tokenId].metadata;
    }
}
