//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
contract NFT is ERC721URIStorage {
    uint256 private count;
    constructor() ERC721("NFT","NFT"){}
    function mint(address user, string memory url) public {
        _mint(user,count);
        _setTokenURI(count,url);
        count+=1;
    }
}
