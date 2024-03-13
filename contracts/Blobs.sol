// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ETHHardForkCancunDencun is ERC20Capped {

    uint256 constant max = 1000000000000000000000000;
    uint256 constant amount = 1000000000000000000;

    constructor()
        ERC20("ETH Hard Fork Cancun Dencun", "BLOBS")
        ERC20Capped(max)        
    {}

    function mint() public {
        _mint(msg.sender, amount);
    }
}