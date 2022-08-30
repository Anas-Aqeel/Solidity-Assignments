/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_16{
  function search(int[] memory array, uint length, int ele) public pure returns(uint){
            for(uint i = 0; i<length;i++){
               if(array[i] == ele) return 1;
            }
            return 0;
        }
}
