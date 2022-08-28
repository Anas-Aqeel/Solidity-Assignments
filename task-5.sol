/// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract task_5{
    function calc(uint a, uint b) public pure returns(uint){
        return (a + b) - (a > b ? a - b : b-a);
    }
}