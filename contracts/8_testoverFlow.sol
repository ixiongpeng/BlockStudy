// SPDX-License-Identify: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contruct OverFlow{
    function overflow() public pure returns(uint) {
        uint256 a = 254;
        uint256 b = 1;
        uint z = a + b;
        require(z > a);
        return z;
    }

    function overflow2() public pure returns(uint z) {

    }

    function overflow() public pure returns(uint z){

    }
} 