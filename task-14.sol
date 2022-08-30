/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_14{
   function sort(int[] memory array, uint length) public pure returns(int[] memory){
            int temp ;
            bool swapped = false; 
        for(uint i = 0; i < length-1; ++i){
            swapped = false; 
            for (uint e = 0; e < length -1 - i; ++e){
                if(array[e] > array[e+1] ){
                    temp = array[e];
                    array[e] = array[e+1];
                    array[e+1] = temp;
                    swapped = true; 
                }
            }
            if(!swapped) break;
        }
        return array;
     }
}
