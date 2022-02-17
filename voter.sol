pragma solidity >=0.4.9 <0.9.0;
pragma experimental ABIEncoderV2;
contract voter {

    uint256 VoterCounter=0;
   
    
    struct Voters  {
        string VoterName;
        address VoterAdress;
        string VoterGender;
        uint  age;
        uint256 Citizennumber;
        bool voted;


    }
    mapping(uint256 => Voters) public voter;
   
    function addVoter(string memory _voterName, address _voterAddress, string memory _voterGender, uint _age, uint _citizenshipNumber) public{
       
       require(_age == 18,"age must be greater than 18 ");
       bool newVoter=true;
       for (uint i=0;i<VoterCounter;i++)
       {
           if(voter[i].VoterAddress == _voterAddress)
           {
               newVoter=false;
               break;
           }
       }
       require(newVoter == true ,"Candidate is already registered");
       
       voter[VoterCounter]= Voters(_voterName,_voterAddress,_voterGender,_age,_citizenshipNumber,false);
       VoterCounter++;
    }

}