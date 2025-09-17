// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 < 0.9.0;

contract Value {
    uint256 tokenBalance;

    constructor(){
        tokenBalance = 0;
    }

    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value / 10);
    }

    function getValue() view public returns (uint256){
        return tokenBalance;
    }
}
