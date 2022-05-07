// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/**
*
*/
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
contract BasicSafeMath {

    using SafeMath for uint;

    function doSomeMath(uint _a, uint _b) public returns (uint) {
        return _a.sub(_b);
    }
}
