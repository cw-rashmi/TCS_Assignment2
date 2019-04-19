pragma solidity ^0.5.1;
contract Student{
    struct StudentDetails{
    uint  Student_ID;
    string Student_Name;
    string Address;
    string city;
    bool exists;
    }
    uint public TotalStud=0;
    mapping(uint=>StudentDetails) public getStudentById;
    function add(string memory _Student_Name,string memory _Address,string memory _city)public{
     TotalStud++;
     getStudentById[TotalStud]=StudentDetails(TotalStud,_Student_Name,_Address,_city,true);
    }
    function update(uint id,string memory _Student_Name,string memory _Address,string memory _city)public{
        require(getStudentById[id].exists);
               getStudentById[id]=StudentDetails(id,_Student_Name,_Address,_city,true);
    
         }
}