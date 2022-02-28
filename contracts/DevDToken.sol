// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract DevDToken {

    string public name = "DevD Token";
    string public symbol = "DEVD";
    string public standard = "DevD Token v1.0";
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    
    // Constructor
    constructor(uint256 _initialSupply) {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }
}