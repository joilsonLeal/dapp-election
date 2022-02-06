pragma solidity >= 0.5.16 <= 0.8.11;

contract Election {

  struct Candidate {
    uint id;
    string name;
    uint vouteCount;
  }

  mapping(uint => Candidate) public candidates;

  uint public candidateCount;

  constructor() public {
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
  }

  function addCandidate(string memory _name) private {
    candidateCount++;
    candidates[candidateCount] = Candidate(candidateCount, _name, 0);
  }

  function add(string memory _name) public {
    candidates[1] = Candidate(1, _name, 0);
  }
}