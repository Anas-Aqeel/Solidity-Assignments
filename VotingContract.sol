/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct Vote{
      address person;
      string party;
      bool isVoted;
      uint power;
}  

contract Day1 {
    mapping(string => uint) public parties;
    mapping(address => bool) isBlackvoters;
    mapping(address=>Vote) votes;
    mapping(address=>Vote) blacklistVotes;

    constructor(string[] memory _parties){
     for(uint i = 0; i<_parties.length; i++){
       parties[_parties[i]] = 1;
     }
    }

    function castVote(string memory _party) public {

      require(parties[_party] != 0, 'Invalid party');
      require(!isBlackvoters[msg.sender], 'You are blacklisted');
      require(!votes[msg.sender].isVoted, 'Already voted');
      votes[msg.sender] = Vote(msg.sender,'_party', true, 1);
      parties[_party]+=1;
    }

    function status(string memory _party) public view returns(uint){
      require(parties[_party] != 0, 'Invalid party');
      return parties[_party]-1;
    }

    function checkMyvote()public view returns(Vote memory){
      return votes[msg.sender];
    }

    function WhitelistVoter(address _voter) public{
      require(!isBlackvoters[_voter], 'Already Whitelisted');
      votes[msg.sender] = blacklistVotes[msg.sender];
      isBlackvoters[_voter] = false;
    }

    function BlacklistVoter(address _voter) public{
      require(isBlackvoters[_voter], 'Already Blacklisted');
      Vote memory voter = votes[msg.sender];
      parties[voter.party] -= voter.power;
      votes[msg.sender] = Vote(address(0), '' , false ,0);
      blacklistVotes[msg.sender] = voter;
      isBlackvoters[_voter] = true;
    }
    
}

