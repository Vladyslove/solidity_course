// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/**
*
*/

contract RevertBank {
    mapping(address => uint) public accounts;

    function deposit(uint money) public payable {
        if(accounts[msg.sender] + msg.value >= accounts[msg.sender]) {
            revert("Overflow error");
        }
        accounts[msg.sender] += msg.value;
    }

    function withdraw(uint money) public {
        if(money >= accounts[msg.sender]){
            //can have more if statements
            revert();
        }
        accounts[msg.sender] -= money;
    }
}
