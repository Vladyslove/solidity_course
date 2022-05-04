// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/**
*
*/

contract RequireBank {
    mapping(address => uint) public accounts;

    function deposit(uint money) public payable {
        require(accounts[msg.sender] + money >= accounts[msg.sender], "Overflow error");
        accounts[msg.sender] += money;
    }

    function withdraw(uint money) public {
        require(money <= accounts[msg.sender]);
        accounts[msg.sender] -= money;
    }
}
