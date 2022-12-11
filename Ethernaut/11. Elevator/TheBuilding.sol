// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Elevator.sol";

contract TheBuilding {

    Elevator public elevator;

    constructor(address _elevator){
        elevator = Elevator(_elevator);
    }

    bool public toggle = true;

    function isLastFloor(uint) external returns (bool){
        toggle = !toggle;
        return toggle;
    }

    function setTop(uint _floor) public {
        elevator.goTo(_floor);
    }

}