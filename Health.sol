pragma solidity ^0.6.0;
contract PatientData{
    
    struct People{
        string Name;
        uint256 Age;   
        string Message;
       
    }
    struct Prescription{
        uint256 DocId;
        string DocName;
        string Advice;
    }
    //List of Patients and Their presciptions
    People[] public Family; //each element refers to a particular family member
    Prescription[] public Advices;
    
   // mapping(string=>uint256) public NameToAge;

    People patient1 ;
    function setRecord(string memory name, string memory pres,uint256 age) public{
        patient1 = People(name,age,pres);
    }
    function giveAdivice(string memory name,uint256 id,string memory desc) public{
        Advices.push(Prescription({DocName:name,DocId:id,Advice:desc}));
    }
    function retrieve() public view returns(string memory){
        return patient1.Message;
    }
    function showPastPres() public view returns(string memory){
        
    }
}
