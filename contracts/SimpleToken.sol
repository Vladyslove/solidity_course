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
    uint256[] public balancesList;
    address[] public lastInteractedAccountsPair;

    constructor(uint256 initialSupply) public {
        owner = msg.sender;
        accounts[owner] = initialSupply;
    }

    function transfer(address to, uint256 value) public {
        //        if (accounts[msg.sender] >= value) {
        //            revert NotEnoughMoney();
        //        }
        uint index = 1;
        require(accounts[msg.sender] >= value);
        require(accounts[to] + value >= accounts[to]);
        accounts[msg.sender] -= value;
        accounts[to] += value;

        lastInteractedAccountsPair = [msg.sender, to];

        // throws invalid opcode
        //        balancesList[0] = accounts[msg.sender];
        //        balancesList[index] = accounts[to];
    }

    /**
        * Create a function that returns the balance of a certain account
    */
    function balance(address _address) public view returns(uint256){
        return accounts[_address];
    }

    /**
        * Create a function that returns the available tokens supply
    */
    function supply() public view returns(uint256){
        return accounts[owner];
    }

    // cannot feel balances list - // throws invalid opcode
    function supplyAll() public view returns(uint256[] memory){
        return balancesList;
    }

    function returnLastInteractedAccountsPair() public view returns(address[] memory){
        return lastInteractedAccountsPair;
    }

    function receiveFunds() payable external {
        // lost here on how to receive ether and send tokens!
    }

    //you can use the Simple Token example to transform
    //    the transfer function into a payable one like this:

    //this way the function  would not receive a second parameter
    //    value but it would use the msg.value that we send with it.
    function transferWithoutValue(address to) payable public {
        require(accounts[msg.sender] >= msg.value);
        require(accounts[to] + msg.value >= accounts[to]);
        accounts[msg.sender] -= msg.value;
        accounts[to] += msg.value;
    }
}
