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
