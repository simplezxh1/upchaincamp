// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Bank{

    address public owner;
    mapping(address => uint256) public balances;// 地址对应余额

    
    constructor() payable {
        owner = msg.sender;
        balances[msg.sender] += msg.value;
    }
    
    receive() external payable {
        balances[msg.sender] += msg.value;
    }

    // 查询余额函数，允许用户查询其余额
    function checkBalance() public view returns (uint256 balance) {
        return balances[msg.sender]; // 返回用户余额
    }

    function withdraw() public {
        uint256 balance = balances[msg.sender];
        require(balance > 0 , "Insufficient balance");
        balances[msg.sender] = 0;
        (bool success,) = payable(msg.sender).call{value:balance}("");
        require(success, "Withdrawal failed");
    }


}