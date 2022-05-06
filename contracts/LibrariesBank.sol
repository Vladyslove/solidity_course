// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/**
*
*/
import "@openzeppelin/contracts/access/Ownable.sol";

import "https://github.com/Vladyslove/contest/blob/develop/contracts/SafeMath.sol";

contract LibrariesBank {
    mapping(address => uint) public accounts;
    using SafeMath for uint256;

    function deposit() public payable {
        require(accounts[msg.sender] + msg.value >= accounts[msg.sender], "Overflow error");
        accounts[msg.sender] = accounts[msg.sender].add(msg.value);
    }

    function withdraw(uint money) public {
        require(money <= accounts[msg.sender]);
        accounts[msg.sender] = accounts[msg.sender].sub(money);
    }
}
