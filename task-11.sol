/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_11{
    function reverseDigit(uint n) public pure returns(uint reverseNum){
        while(n != 0){
            reverseNum = (reverseNum * 10) + (n % 10);
            n/=10;
        }
    }
}