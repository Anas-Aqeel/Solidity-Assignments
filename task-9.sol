/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_9{
    function prime(uint n) public pure returns(uint result){
        result = 1;
        for(uint i = 2; i < n/2; i++){
            result = n % i != 0 ? 1 : 0;
            if(result == 0) break;
        } 
    }
}