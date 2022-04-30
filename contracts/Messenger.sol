// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

// creating the contract
/**
 * The Messenger contract does this and that...
 */
contract Messenger {
    address owner;
    string[] messages;

    constructor () public {
        owner = msg.sender;
    }

// Data location must be "memory" or "calldata" for parameter in function, but none was given.
    function add(string memory newMessage) public { 
        require(msg.sender == owner);
        messages.push(newMessage);
    }

    function count() view public returns(uint) {
        return messages.length;
    }

    function getMessages(uint index) view public returns (string memory) {
        return messages[index];
    }

}
