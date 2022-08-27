contract TaskOne{
    string public greet = "Hello Solidity";
    uint stateVar = 10;

    function returnStateVar() public view returns(uint){
        return stateVar;
    }
    function returnLocalVar() public pure returns(uint){
        uint localVar = 20;
        return localVar;
    }
}
    // function nthTerm(uint n, uint a, uint b, uint c) public pure returns(uint result){
    //     require(n > 3 , "n must be greater than 3");
    //     uint[4] memory nums = [a,b,c, result];
    //     for(uint i = 3; i < n; i++){
    //         nums[3]= nums[i-1] + nums[i-2] + nums[i-3];
    //     }
    //     result = nums[nums.length-1];
    // }