/// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract task_2{
    function digitSum(uint n) public pure returns(uint){
            uint lastChar =0;
            uint sum = 0;
            uint countChar = 0; 
            uint i = n; 
            while (i != 0){
                countChar++;
                i = i/10;
            }
                uint f = 0;
                for(uint e = countChar; e > 0; e--){

                    uint b = n/(10 ** (e-1));
                    sum += (b - (lastChar*10));
                    lastChar = b;
                    f++;
                }
            return sum;
    }

    function nthTerm(uint n, uint a, uint b, uint c) public pure returns(uint result){
        require(n > 3 , "n must be greater than 3");
        uint[4] memory nums = [a,b,c, a+b+c];
        for(uint i = 3; i < n; i++){
            nums[3] = nums[2] + nums[1] + nums[0];
            for(uint e = 0 ; e <  nums.length-1; e++){
                 nums[e]= nums[e+1];
            }
        }
        result = nums[nums.length-1];
    }
}

