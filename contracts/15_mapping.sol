//SPDX-License-Identifier: GLP-3.0
pragma solidity >0.8.2 < 0.9.0;

/**
任务 1：基于映射创建一个简单的用户余额管理系统，并实现余额的增加与查询功能。
任务 2：扩展系统，使其能够记录每个用户的交易历史，模拟 Java 的 Map 中键集合的概念。
任务 3：结合映射与数组，实现一个简单的排行榜系统，记录并排序用户的积分。
*/

contract MappingTest{
    mapping(address=>uint256) internal balances;
    mapping(address=>uint256[]) history;

    // 余额的增加
    function addBalance(uint256 balance) external {
        balances[msg.sender] +=balance; 
    }
    // 查询
    function getBalance() external view returns (uint256){
        return balances[msg.sender];
    }

    // 记录交易历史
    function recordTxHIstory(uint256 balance) internal {
        history[msg.sender].push(balance);
    }

    // 记录并排序用户积分?

}