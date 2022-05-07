// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/**
*
*/

abstract contract AbstractClassAnimal {
    string public breed;
    uint public age;
    uint public weight;

    constructor() {
        age = 1;
        weight = 1;
    }

    function sleep() pure public returns (string memory) {return "Zzzzz...";}

    function eat() pure public returns (string memory) {return "Nom nom..";}

    function talk() pure public virtual returns (string memory);
}

contract Cat is AbstractClassAnimal {
    constructor() public {
        breed = "Persian";
        age = 3;
        weight = 5;
    }
    function talk() pure public override returns (string memory) {return "miaow";}
}

contract Dog is AbstractClassAnimal {
    constructor() public {
        breed = "Labrador";
        age = 5;
        weight = 3;
    }
    function talk() pure public override returns (string memory) {return "bark bark";}
}
