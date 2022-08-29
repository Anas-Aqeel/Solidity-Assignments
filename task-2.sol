/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract task_2{
    uint stateVar = 10;
    function getStateVar() public view returns(uint val){
        val = stateVar;
    }
}