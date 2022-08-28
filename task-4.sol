/// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract task_4{
    uint stateVar = 0;
    function setStatelVar(uint _stateVar) public returns(uint){
        stateVar = _stateVar;
        return stateVar;
    }
    function getStatelVar() public view returns(uint){
        return stateVar;
    }
}