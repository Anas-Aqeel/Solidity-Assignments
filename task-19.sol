/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_19{
 function HFC(int[] memory array, uint length) public pure returns(int){
            int secondMax;
            int max;
            for(uint i =0; i < length; i++){
                if(array[i] > max){
                    secondMax = max;
                    max= array[i];
                }
                if(array[i] > secondMax && array[i] < max) secondMax = array[i];
            }  
            return secondMax;          
        }
}
