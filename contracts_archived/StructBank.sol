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
contract StructBank {
    struct Account {
        address addr;
        uint amount;
    }

    Account public acc = Account({
        addr : 0x66ec542D55a86F2Fd0B0d9cB9f31bc20aC02477a,
        amount : 111
    });

    mapping(address => uint) balances;

    Account[] public accounts;

    function addAccount(address _addr, uint _amount) public {
        accounts.push(Account(_addr, _amount));
    }

    function addAmount(uint _addMoney) public {
        acc.amount += _addMoney;
    }

    function deposit(uint money) public {
        balances[msg.sender] += money;
    }

    function withdrawAmount(uint _withdrawMoney) public {
        acc.amount -= _withdrawMoney;
    }

    function withdraw(uint money) public {
        balances[msg.sender] -= money;
    }

    Account public acc2 = Account({
        addr : 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db,
        amount : 222
    });

    function transferAmount(uint _addMoney) public {
        acc.amount -= _addMoney;
        acc2.amount += _addMoney;
    }

    function transfer(address _to, address _from, uint money) public {
        balances[_from] -= money;
        balances[_to] += money;
    }
}
