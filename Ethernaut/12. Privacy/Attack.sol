// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {

    function attack(bytes32 bite) public pure returns(bytes16){
        return bytes16(bite);
    }
    
}