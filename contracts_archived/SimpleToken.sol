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

    function transfer(address receiver, uint256 value) public {
        //        if (accounts[msg.sender] >= value) {
        //            revert NotEnoughMoney();
        //        }
        uint index = 1;
        require(accounts[msg.sender] >= value);
        require(accounts[receiver] + value >= accounts[receiver]);
        accounts[msg.sender] -= value;
        accounts[receiver] += value;

        lastInteractedAccountsPair = [msg.sender, receiver];

        // throws invalid opcode
        //        balancesList[0] = accounts[msg.sender];
        //        balancesList[index] = accounts[receiver];
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
    function transferWithoutValue(address receiver) payable public {
        require(accounts[msg.sender] >= msg.value);
        require(accounts[receiver] + msg.value >= accounts[receiver]);
        accounts[msg.sender] -= msg.value;
        accounts[receiver] += msg.value;
    }
}
