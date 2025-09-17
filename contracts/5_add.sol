// SPDX-License-Identifier: GPL-3.0
pragma solidity > 0.8.2 < 0.9.0;

contruct Add{
    unint a;
    unint b;

    construct() public {
        a = 0;
        b = 0; 
    }

    function add() public view returns(uint){
        a = 10;
        b = 20;
        uint resulr = a + b;
        return result; 
    }
}