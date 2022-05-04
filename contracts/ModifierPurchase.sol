// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/**
*
*/

contract ModifierPurchase {
    address public seller;

    modifier onlySeller { // Modifier
        require(msg.sender == seller);
        _;
    }

    function abort() public view onlySeller { // Modifier usage
        // ...
    }
}
