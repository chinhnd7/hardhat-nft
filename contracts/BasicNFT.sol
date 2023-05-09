// SPDX-License-Identifier: MIT
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

pragma solidity ^0.8.7;

contract BasicNft is ERC721 {
    // Token name is Dogie, token symbol is DOG 
    constructor() ERC721("Dogie", "DOG") {}
    function
}