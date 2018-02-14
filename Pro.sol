pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Pro is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Pro(address _owner)  UpgradeableToken(_owner) {
    name = "Pro";
    symbol = "pro";
    totalSupply = 1000000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}