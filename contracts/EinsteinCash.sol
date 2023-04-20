pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract EinsteinCash is ERC20Pausable, ERC20Burnable, ERC20Detailed {

  string public constant _name = "EinsteinCash";
  string public constant _symbol = "EXE";
  uint8 public constant _decimals = 8;
  uint256 public constant INITIAL_SUPPLY = 2e9 * 10**uint256(_decimals);

  constructor() ERC20Burnable() ERC20Pausable() ERC20Detailed(_name, _symbol, _decimals) public {
      _mint(msg.sender, INITIAL_SUPPLY);
  }

}