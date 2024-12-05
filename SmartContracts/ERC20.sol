// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable{
    constructor(string memory name, string memory symbol) ERC20(name, symbol) Ownable(msg.sender) {

    }

    function mint(address to, uint amount) public onlyOwner {
        _mint(to, amount);
    }
}
