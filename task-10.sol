/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_10{

function palindrome(uint256 n)public pure returns (uint256){
        uint original = n;
        uint reverseValue = 0;
        while(n != 0)   {
            reverseValue = (reverseValue * 10) + (n % 10);
            n/=10;
        }
         return reverseValue == original ? 1 :0;
        }
}  