//SPDX-License-Identifier:GLP-3.0

pragma solidity >=0.8.2 < 0.9.2;

contract Contract1{
    // 通过this获取合约地址
    function getAddress()public view returns(address) {
        return address(this);
    }

    // 获取合约信息
    function getContructInfo() public view return(){
        type(Contract1).name;
        type(Contract1).createCode;
        type(Contract1).runtimeCode;
    }

    receive() external payable {
        // 当交易未匹配到合约的其他函数时，会自动调用 receive 函数
     }

    // 自毁合约
    function destruct(address receiptant)public {
        selfdestruct(receiptant) // 默认销毁合约并转移出代币
    }

    // 判断是合约账户还是外部账户
    function checkContractAccount(address ad) public view return(bool){
        uint256 size = extcodesize(ad) // evm虚拟机方法，部署后便有代码大小一说
        return size > 0;
    }

    web3.eth.getCode(ad).then(console.log)
    // 返回 0x开头则为账户；

}