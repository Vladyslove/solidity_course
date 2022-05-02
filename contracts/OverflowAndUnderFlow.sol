// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;


contract OverflowAndUnderFlow {

    function overflow() public pure returns(uint256) {
        uint256 max = 2**256 - 1; // 2 in 256 stepeni
        return max + 1; // ... words: [0, ...
    }

    function overflowPlusNine() public pure returns(uint256) {
        uint256 max = 2**256 - 1; // 2 in 256 stepeni
        return max + 9; // ... words: [8, ...
    }

    function underflow() public pure returns(uint256) {
        uint256 min = 0;
        return min - 1; // should be 2**256-1 BUT NOT ((
    }

    function underflowMinusNine() public pure returns(uint256) {
        uint256 min = 0;
        return min - 9; 
    }
}
