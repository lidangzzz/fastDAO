//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.10;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import './DAOConfig.sol';

contract StockManager is ERC1155 {
  constructor() ERC1155("") {
    console.log("StockManager constructor");
  }
}