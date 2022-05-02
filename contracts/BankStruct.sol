// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract BankStruct {
    struct Account {
        address addr;
        uint amount;
    }

    Account public acc = Account({
    addr : 0x66ec542D55a86F2Fd0B0d9cB9f31bc20aC02477a,
    amount : 50
    });

    function addAmount(uint _addMoney) public {
        acc.amount += _addMoney;
    }
}
