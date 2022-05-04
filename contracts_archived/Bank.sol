// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

// after lecture 18.Mappings in solidity
contract BankMappings {
    mapping(address => uint) public accounts;

    function deposit(uint money) public {
        accounts[msg.sender] += money;
    }

    function withdraw(uint money) public {
        accounts[msg.sender] -= money;
    }
}
