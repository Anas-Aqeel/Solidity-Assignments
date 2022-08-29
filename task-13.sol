/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_13{
    function even(uint[] memory array, uint len) public pure returns(uint[] memory){
        for(uint i = 0; i<len;i++){
            array[i]*=2;
        }
        return array;
     }
}
