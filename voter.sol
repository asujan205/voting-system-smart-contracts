pragma solidity >=0.4.9 <0.9.0;
pragma experimental ABIEncoderV2;
contract voter {
    uint256 VoterCounter;
    struct Voters {
        string VoterName;
        address VoterAdress;
        string VoterGender;
        uint  age;
        uint256 Citizennumber;
        bool voted;


    }
    mapping(uint => Voters ) public voter;
    function addVoter(string memory _voterName, address _voterAddress, string memory _voterGender, uint _age, uint _citizenshipNumber) public{

    }

}