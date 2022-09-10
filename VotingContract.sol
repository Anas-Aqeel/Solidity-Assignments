/// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

struct Vote{
      address person;
      string party;
      bool isVoted;
      uint power;
}  

contract VotingContract {
    address owner;
    mapping(string => uint) public parties;
    mapping(address => bool) isBlacklist;
    mapping(address => Vote) votes;
    mapping(address=>Vote) blacklistVotes;

    constructor(string[] memory _parties){
     for(uint i = 0; i<_parties.length; i++){
       parties[_parties[i]] = 1;
     }
     owner = msg.sender;
    }

    function castVote(string memory _party) public {

      require(parties[_party] != 0, 'Invalid party');
      require(!isBlacklist[msg.sender], 'You are blacklisted');
      require(!votes[msg.sender].isVoted, 'Already voted');

      votes[msg.sender] = Vote(msg.sender, _party, true, 1);
      parties[_party]+=1;
    }

    function status(string memory _party) public view returns(uint){
      require(parties[_party] != 0, 'Invalid party');
      return parties[_party]-1;
    }

    function checkMyvote() public view returns(Vote memory){
      return votes[msg.sender];
    }
    modifier _onlyowner(){
      require(msg.sender == owner, "ONLY OWNER!");
      _;
    }

    function WhitelistVoter(address _voter) public _onlyowner{
      require(isBlacklist[_voter], 'Already Whitelisted');

      Vote memory voter = blacklistVotes[_voter];
      votes[_voter] = voter;
      parties[voter.party] += voter.power;
      blacklistVotes[_voter] = Vote(address(0), '' , false ,0);
      isBlacklist[_voter] = false;
    }


    function BlacklistVoter(address _voter) public _onlyowner{
      require(!isBlacklist[_voter], 'Already Blacklisted');

      Vote memory voter = votes[_voter];
      parties[voter.party] -= voter.power;
      votes[_voter] = Vote(address(0), '' , false ,0);
      blacklistVotes[_voter] = voter;
      isBlacklist[_voter] = true;
    }
    
}
