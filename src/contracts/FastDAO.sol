//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.10;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import './DAOConfig.sol';

contract FastDAO is ERC1155 {
    string private greeting;

    uint256[] private myArray;


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

    constructor() ERC1155("") {

        greeting = "Hello";
        //_mint(DAOConfig.USER_INDEX_1, DAOConfig.ClaassAIndex, DAOConfig.ClaassAAmount, "");

        for (uint8 i = 0; i < 10; i++) {
            myArray.push(i);
        }

        for (uint8 i = 0; i < 10; i++) {
            console.log("myArray[%d] = %d", i, myArray[i]);
        }
    }
}