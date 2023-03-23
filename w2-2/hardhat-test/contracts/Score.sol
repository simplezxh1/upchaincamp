// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "./IScore.sol";

contract Score is IScore {
    // 存储老师地址
    address public teacher;
    // 映射表，表示 { 学生地址 : { 课目: 分数 } }
    mapping(address => uint) public scores;

    // 定义错误抛出
    error InvalidAddress();
    error InvalidScore();
    //event ModifyScore(address indexed student, int256 score);
    // 构造函数
    constructor() payable {
        teacher = msg.sender;
    }

    modifier onlyTeacher() {
        require(msg.sender == teacher, "You aren't the teacher");
        _;
    }

   function setScore(address student, uint256 score) external override {
        //if(msg.sender == address(0)) revert InvalidAddress();
        if(msg.sender != teacher) revert InvalidAddress();
        if(score > 100) revert InvalidScore();
        scores[student] = score;
        //emit ModifyScore(student, int256(score));
    }

}