// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract DevDToken {

    string public name = "DevD Token";
    string public symbol = "DEVD";
    uint256 public totalSupply;
    string public standard = "DevD Token v1.0";

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;
    
    // Constructor
    constructor(uint256 _initialSupply) {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        // Transfer event
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
}