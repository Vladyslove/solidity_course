// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/**
*
*/

contract ModifierOwned {
    constructor() public {
        owner = msg.sender;
    }
    address payable owner;

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

contract Mortal is ModifierOwned {

    function close() public onlyOwner {
        selfdestruct(owner);
    }
}
