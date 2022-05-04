// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/**
*
*/

contract AssertMath {

    function add(uint256 a, uint256 b) internal pure returns (uint) {
        uint c = a + b;
        assert(c >= a);
        return c;
    }

    function multiply(uint256 a, uint256 b) internal pure returns (uint) {
        if (a == 0) {
            return 0;
        }
        uint c = a * b;
        assert(c / a == b);
        return c;
    }


    // next, added by me


    // 21785
    // {
    //  tx: '0x63f568aa4f6559df84e24448f9f6ba7bc9a10d242c2c66530f36ff9d05e540df',
    //  receipt: {
    //    transactionHash: '0x63f568aa4f6559df84e24448f9f6ba7bc9a10d242c2c66530f36ff9d05e540df',
    //    transactionIndex: 0,
    //    blockHash: '0x427611c9158ccc9bf62c109cbfbde9e53b5cfe1e07f94b12e6ad7524829c0b13',
    //    blockNumber: 239,
    //    from: '0xd4f096bd2fa53e8374ff82c1a21f7afe8a448f9d',
    //    to: '0x99a382278fdc99b82151e568ed49e04e8eefae58',
    //    gasUsed: 21814,
    //    cumulativeGasUsed: 21814,
    //    contractAddress: null,
    //    logs: [],
    //    status: true,
    //    logsBloom: '0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
    //    rawLogs: []
    //  },
    //  logs: []
    //}

    function addEx(uint256 a, uint256 b) external returns (uint) {
        uint c = a + b;
        assert(c >= a);
        return c;
    }

    // 21814
    function multiplyEx(uint256 a, uint256 b) external returns (uint) {
        if (a == 0) {
            return 0;
        }
        uint c = a * b;
        assert(c / a == b);
        return c;
    }

    // todo no transaction, no gas tk: truffle(development)> app.addExPure(2,4)
    // TODO STRANGE in remix - it's transaction and gas reduced
    //BN { negative: 0, words: [ 6, <1 empty item> ], length: 1, red: null }
    function addExPure(uint256 a, uint256 b) external pure returns (uint) {
        uint c = a + b;
        assert(c >= a);
        return c;
    }

    function multiplyExPure(uint256 a, uint256 b) external returns (uint) {
        if (a == 0) {
            return 0;
        }
        uint c = a * b;
        assert(c / a == b);
        return c;
    }



    function addExWr(uint256 a, uint256 b) external returns (uint) {
        uint c = a;
        assert(c >= a);
        return c;
    }

    function multiplyExWr(uint256 a, uint256 b) external returns (uint) {
        if (a == 0) {
            return 0;
        }
        uint c = a;
        assert(c / a == b);
        return c;
    }

    function addExPureWr(uint256 a, uint256 b) external pure returns (uint) {
        uint c = a;
        assert(c >= a);
        return c;
    }

    function multiplyExPureWr(uint256 a, uint256 b) external returns (uint) {
        if (a == 0) {
            return 0;
        }
        uint c = a;
        assert(c / a == b);
        return c;
    }
}
