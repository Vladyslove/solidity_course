// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract ChangeArrayValue {
    uint[20] public arr;

    function startChange() public returns (uint[20] memory){
        firstChange(arr);
        secondChange(arr);
        return arr;
    }

    function firstChange(uint[20] storage x) internal {
        x[0] = 4;
    }

    function secondChange(uint[20] memory x) internal pure {
        x[0] = 3;
    }
}
