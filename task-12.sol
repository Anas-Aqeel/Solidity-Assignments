/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_12{

function reverseArray(uint[] memory arr, uint length) public pure returns(uint[] memory){
        uint[] memory reversalArray = new uint[](length);
        uint j = 0;
        for(uint i = arr.length; i>0; i--){
                reversalArray[j] = arr[i-1] ;
                j++;
        }
        return reversalArray;
    }
}