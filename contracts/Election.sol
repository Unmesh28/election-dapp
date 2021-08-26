pragma solidity ^0.8;

contract Election {

    //Model candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    //fetch candidates
    mapping(uint => Candidate) public candidates;
    //store candidates count
    uint public candidatesCount;

    //Constructor
    constructor() {  
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] =  Candidate(candidatesCount, _name, 0);
    } 
}