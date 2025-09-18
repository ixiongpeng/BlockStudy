
//SPDX-License-Identifier: GLP-3.0

pragma solidity >=0.8.2 <0.9.0;
/**
任务 1：创建一个合约，定义一个结构体用于存储产品信息，包括产品 ID、名称、价格和库存。实现增加、修改和查询产品信息的功能。
任务 2：扩展合约，定义一个结构体用于存储订单信息，并实现订单的创建和查询功能，考虑如何设计结构体以便有效存储和访问订单数据。
任务 3：设计一个用户管理合约，使用结构体记录用户的个人信息、余额及交易历史，探索如何优化结构体的设计以减少存储成本。
*/

contract StructTest{
    struct Product{
        uint id;
        string name;
        uint price;
        uint num;
    }

    mapping(address=>Product[]) accountProdutcs;

    function addProduct(uint id, string memory name, uint price, uint num) public {
        // Product storage product = accountProduts[msg.sender][id]
        Product memory product = Product(id, name, price, num);
        accountProdutcs[msg.sender].push(product);
    }

    function changeProduct(uint id, string memory name, uint price, uint num) public{
        Product storage product = accountProdutcs[msg.sender][id];
        product.name = name;
        product.price = price;
        product.num = num;
    }

    function getProduct(uint id) public view returns(Product memory){
        return accountProdutcs[msg.sender][id];
    }

    struct Order{
        uint orderId;
        string name;
        uint count;
        uint price;
    }

    mapping(address=>Order[]) orders;

    // 创建订单
    function createOrder(uint orderId, string memory name, uint count, uint price) public {
        Order memory order = Order(orderId, name, count, price);
        orders[msg.sender].push(order);
    }

    // 查询订单
    function searchOrder(uint orderId)public view returns (Order memory){
        return orders[msg.sender][orderId];
    }

    struct Transaction{
        string des;
        string time;
    }

    struct User{
        uint id;
        string name;
        uint age;
        uint balance;
        Transaction[] transaction;
    }



}