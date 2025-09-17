// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
编写一个智能合约，允许用户存款并设置一个特定的地址为白名单地址，只有该地址能够提取合约中的资金。
实现一个功能，允许用户查询自己在合约中的余额，并且测试存款、提取和余额查询功能的正确性。
测试白名单功能，确保只有授权的地址可以提取资金。
*/
contract Wallet{
    mapping(address=>bool) whiteList;
    mapping(address=>uint256) accountMap; 

    // 设置白名单       
    function setWhiteList(address accountAd) internal {
        whiteList[accountAd] = true;
    }

    // 移除白名单
    function removeWhiteList(address accountAddress) internal {
        whiteList[accountAddress] = false;
    }

    // 存款
    function deposit(address accountAddress, uint256 money) public {
        setWhiteList(accountAddress);
        accountMap[accountAddress] += money;
    }

    // 取款
    function withdraw(address accountAd, uint256 money) public payable {
        require(whiteList[accountAd] == true, unicode"无权限");
        require(accountMap[accountAd] > money, unicode"存款数额不够");
        address payable receipient = payable(accountAd);
        receipient.transfer(money);
    }

    // 余额查询
    function check(address account)public view  returns(uint256) {
        require(whiteList[account] == true, unicode"无权限");
        return accountMap[account];
    }
    
}