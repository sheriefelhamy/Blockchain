// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    constructor(
        string memory name,
        string memory symbol
    ) ERC721(name, symbol) {}

    function mint_Token(string memory js_URI) external returns (uint256) {
        uint256 newId = _tokenIdCounter.current();
        _safeMint(msg.sender, newId);
        _setTokenURI(newId, js_URI);
        _tokenIdCounter.increment();
        return newId;
    }

    function curID() external view returns (uint256) {
        // just to know the current id
        uint256 Id = _tokenIdCounter.current();
        return Id;
    }
}
