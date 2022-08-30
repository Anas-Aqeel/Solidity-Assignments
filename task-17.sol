/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_17{
   function expression(uint exp, uint n)public pure returns(uint sum){
    sum++;
    for(uint i =1; i<=n; i++){
        sum += exp ** i;
    }
  }
}
