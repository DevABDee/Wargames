// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "openzeppelin-contracts-08/token/ERC20/ERC20.sol";

contract SwappableTokenTwo is ERC20 {
  address private _dex;
  constructor(address dexInstance, string memory name, string memory symbol, uint initialSupply, uint initialDexSupply) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
        _mint(dexInstance, initialDexSupply);
        _dex = dexInstance;
  }

  function approve(address owner, address spender, uint256 amount) public {
    super._approve(owner, spender, amount);
  }
}