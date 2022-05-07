// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

interface Token {
    function transfer(address recipient, uint amount) external;
    function balanceOf(address _owner) external view returns (uint256 balance);
}
