// SPDX-License-Identify: GPL-3.0
pragma solidity >0.8.2 <0.9.0;
contract Math{
    int8 a;
    int16 b;
    uint32 c;
    uint64 d;

    constructor() {
        a = -2;
        b = 3;
        c = 12;
        d = 10;
    }

    function add(uint x, uint y) public pure returns (uint z){
        z = x + y;
    }

    function sub(uint x, uint y) public pure returns (uint z){
        z = x - y;
    }

    function leftShift(uint x, uint y)public pure returns(uint z) {
        z = x << y;
    }

    function rightShift(uint x, uint y) public pure returns(uint z){
        z = x >> y;
    }
    
    function div(uint x, uint y) public pure returns(uint z){
        z = x / y;
    }

    function testAddAdd(uint x) public pure returns(uint z){
        z = ++x;
    }
}
