/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract task_8{
    
    function digitSum(uint n) public pure returns(uint){
            uint total;
            uint num2 = n;
            while(n != 0){
                num2 = n % 10;
                total += num2;
                n /= 10;
            }
            return total;
    }

    function nthTerm(uint n, uint a, uint b, uint c) public pure returns(uint result){
        uint[3] memory nums = [a,b,c];

        for(uint e = 3; e<n; e++){
            result = nums[0] + nums[1] + nums[2];
            nums[0] = nums[1];
            nums[1] = nums[2];
            nums[2] = result;        
        }
    }
}