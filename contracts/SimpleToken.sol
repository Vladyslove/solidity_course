// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/**
* after lecture 18.Mappings in solidity
Create a function that returns the balance of a certain account

Create a function that returns the available tokens supply

Create a payable function that receives ether and it will send tokens to the sender.
*/

contract SimpleToken {
    address payable owner;
    mapping (address => uint256) public accounts;

    constructor(uint256 initialSupply) public {
        owner = msg.sender;
        accounts[owner] = initialSupply;
    }

    function transfer(address to, uint256 value) payable public {
        require(accounts[msg.sender] >= value);
        require(accounts[to] + value >= accounts[to]);
        accounts[msg.sender] -= value;
        accounts[to] += value;
    }

    function balance(address _address) public view returns(uint256){
        return accounts[_address];
    }

    function supply() public view returns(uint256){
        return accounts[owner];
    }

    function receiveFunds() payable external {
        // lost here on how to receive ether and send tokens!
    }
}
