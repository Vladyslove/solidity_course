// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

// creating the contract
/**
 * The Messenger contract does this and that...
 */
contract VariableExamples {
    bool public switchedOn = true;
    address public owner = msg.sender;
    uint public number = 8;
    bytes32 public awesome1 = "Solidity is aswesome!";
    string public awesome2 = "Solidity is aswesome!";
}
