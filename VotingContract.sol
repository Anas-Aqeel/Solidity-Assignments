/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 struct Vote{
      address person;
      string candidate;
      bool isVoted;
}  

contract Day1 {
    mapping(string => uint) candidates;

    constructor(string[] memory _candidates){
     for(uint i = 0;i<_candidates.length;i++){
       candidates[_candidates[i]] = 1;
     }
    }
    mapping(address=>Vote) votes;

    function castVote(string memory _candidate) public {

      require(candidates[_candidate] != 0, 'Invalid Candidate');
      require(!votes[msg.sender].isVoted, 'Already voted');

      votes[msg.sender] = Vote(msg.sender,'_candidate', true);
      candidates[_candidate]+=1;
    }

    function status(string memory _candidate) public view returns(uint){
      require(candidates[_candidate] != 0, 'Invalid Candidate');
      
      return candidates[_candidate]-1;
    }

    function checkMyvote()public view returns(Vote memory){
      return votes[msg.sender];
    }

}

