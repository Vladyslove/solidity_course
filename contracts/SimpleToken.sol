// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/**
* after lecture 18.Mappings in solidity
*/

contract SimpleToken {
    address owner;
    mapping (address => uint256) public accounts;

//    error public NotEnoughMoney;

    constructor(uint256 initialSupply) public {
        owner = msg.sender;
        accounts[owner] = initialSupply;
    }

    function transfer(address to, uint256 value) public {
//        if (accounts[msg.sender] >= value) {
//            revert NotEnoughMoney();
//        }

//        require(accounts[msg.sender] >= value);
        require(accounts[to] + value >= accounts[to]);
        accounts[msg.sender] -= value;
        accounts[to] += value;
    }
}
