//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.10;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract FastDAO is ERC721 {
    string private greeting;


    function append( string memory a, string memory b) internal pure returns (string memory) {
        return string(abi.encodePacked(a, b));
    }   

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }

    constructor() ERC721("MyCollectible", "MCO") {
    }
}