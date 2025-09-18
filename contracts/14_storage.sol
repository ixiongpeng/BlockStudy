// SPDX-License-Identifier:GLP-3.0

pragma solidity >=0.8.2 <0.9.0;
/**
请编写一个 Solidity 智能合约，实现以下功能：

数组的操作：合约中包含一个 storage 存储的动态数组 data。编写一个函数 updateData(uint[] memory newData)，该函数接收一个 memory 数组并将其内容复制到 data 中。然后通过另一个函数 getData() 返回 data 数组。

引用类型的行为：在合约中编写两个函数：

modifyStorageData(uint index, uint value)：修改 data 数组中指定索引位置的值。
modifyMemoryData(uint[] memory memData)：尝试修改传入的 memory 数组，并返回修改后的数组。
*/

contract Storage{
    uint[] data;

    // function updateData(unit[] memory newData) public {
    //     data = newData;
    // }

    function getData() public view returns(uint[] memory) {
        return data;
    }

    function modifyStorageData(uint index, uint value) public {
        require(data.length < index, unicode"角标错误");
        data[index] = value;
    }

    function modifyMemoryData(uint[] memory memData) public pure returns(uint[] memory){
        memData[0] = 0;
        return memData;
    }




}