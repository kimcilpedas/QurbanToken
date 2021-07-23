// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20MinerReward is ERC20 {

    event LogNewAlert(string description, address indexed _from, uint256 _n);

    constructor() public ERC20("Qurban", "QBN") {}

    function _reward() public {
        _mint(block.coinbase, 20);
        emit LogNewAlert('_rewarded', block.coinbase, block.number);
    }
}