//SPDX-License-Identifier:GLP-3.0
pragma solidity >=0.8.2 < 0.9.0;

/**
请编写一个 Solidity 智能合约，该合约包含以下功能：

函数选择器动态调用：合约中有两个函数 square(uint x) 和 double(uint x)，分别返回输入值的平方和两倍。实现一个名为 executeFunction(bytes4 selector, uint x) 的函数，该函数可以根据传入的选择器动态调用 square 或 double。

选择器存储与调用：合约中有一个状态变量 bytes4 storedSelector，实现以下功能：

storeSelector(bytes4 selector)：将选择器存储在状态变量 storedSelector 中。
executeStoredFunction(uint x)：调用存储在 storedSelector 中的函数，并返回结果。
*/

contract FunctionText{

    bytes4 storedSelector;
    
    function square(uint x) public pure returns(uint256){
        return x * x;
    }

    function double(uint x) public pure returns(uint256){
        return 2 * x;
    }

    function excutefunction(bytes4 selector, uint x) public returns(uint){
         (bool success, bytes memory data) = address(this).call(abi.encodeWithSelector(selector, x));
         require(success, unicode"调用失败");
         return abi.decode(data, (uint));
    }

    bytes4 func;

    function storeSelector(bytes4 selector) external{
        func = selector;
    }

    function excuteStoredFunction(uint x) external returns (uint){
        require(func != 0, unicode"函数为空");
        return excutefunction(func, x);
    }

    function getSelector() internal pure returns(bytes4){
        return bytes4(keccak256("double(uint)"));
    }

}