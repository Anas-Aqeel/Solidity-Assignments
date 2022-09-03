/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_19{
  function hcf(uint num1,uint num2) public pure returns(uint){
      if(num2 != 0){
         return hcf(num2 , num1%num2);
      }else{
          return num1;
      }
  }
}
