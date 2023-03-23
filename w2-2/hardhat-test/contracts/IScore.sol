//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface IScore {
    //event ModifyScore(address indexed student, int256 score);
    function setScore(address student, uint256 score) external;
    //function getScore(address student) external view returns(uint256 score);
}