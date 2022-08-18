// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnabel.sol";
contract MyToken is ERC20Mintable, ERC20Burnable, ERC20Detailed, Ownable {
    constructor() 
    Ownable()
    ERC20Detailed("CI2TOKEN","CI2T",0)
    ERC20Mintable()
    ERC20Burnable()
    public {
        _mint(super.owner(),1000000000 * 10**uint(super.decimals()));
    }
}