//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "./safeMath.sol";


contract Greeter {
    string private greeting;
    uint256 greeter_a = 1;
    uint256 greeter_b = 1;

    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }


    function append( string memory a, string memory b) internal pure returns (string memory) {
        return string(abi.encodePacked(a, b));
    }   

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setA(uint256 a) public {
        greeter_a = a;
    }

    function setB(uint256 b) public {
        greeter_b = b;
    }

    function getA() public view returns (uint) {
        return greeter_a;
    }

    function getB() public view returns (uint) {
        return greeter_b;
    }

    function add(uint256 a, uint256 b) public pure returns (uint256 result) {
        return safeMath.add(a, b);
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
