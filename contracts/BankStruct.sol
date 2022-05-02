// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/**
* ASSIGNMENT:

Copy the contract and test it out in REMIX

Add amount to the account with the function “addAmount”

Create a function “withdraw” that deducts money from the account

Create one more Account

Create a function transfer that deducts money from first account and adds them to the second
*/
contract BankStruct {
    struct Account {
        address addr;
        uint amount;
    }

    Account public acc = Account({
        addr : 0x66ec542D55a86F2Fd0B0d9cB9f31bc20aC02477a,
        amount : 111
    });

    function addAmount(uint _addMoney) public {
        acc.amount += _addMoney;
    }

    function withdrawAmount(uint _withdrawMoney) public {
        acc.amount -= _withdrawMoney;
    }

    Account public acc2 = Account({
        addr : 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db,
        amount : 222
    });

    function transferAmount(uint _addMoney) public {
        acc.amount -= _addMoney;
        acc2.amount += _addMoney;
    }
}
