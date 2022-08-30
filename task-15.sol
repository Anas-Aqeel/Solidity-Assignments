/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_15{
  function distinct(int[] memory array, uint length) public pure returns(uint distincts){
            uint i;
            uint e;
            for(i = 0; i<length;i++){
                for(e = 0; e<i; e++){
                    if(array[e] == array[i] && (i != e)){
                       break;
                    }
                }
                if(e == i) {++distincts;}
            }
        }
}
