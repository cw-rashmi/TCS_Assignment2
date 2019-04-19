pragma solidity ^0.5.1;
contract Student{
    struct StudentDetails{
    uint  Student_ID;
    string Student_Name;
    string Address;
    string city;
    bool exists;
    }
    //On addition of new student the StudentID is incremented by one.
    uint public StudentID=0;
    
    //getStudentById is a transact that returns the details of the student 
    mapping(uint=>StudentDetails) public getStudentById;
    
    //transact to add new student
    function add_student(string memory _Student_Name,string memory _Address,string memory _city)public{
     StudentID++;
     getStudentById[StudentID]=StudentDetails(StudentID,_Student_Name,_Address,_city,true);
    }
    
    //transact to update the existing student with the ID
    function update_student(uint id,string memory _Student_Name,string memory _Address,string memory _city)public{
        
        //to check if the student with the given ID exist.
        require(getStudentById[id].exists);
                
        //the details of the student with the ID given as the input is oerwritten with the new details.
        getStudentById[id]=StudentDetails(id,_Student_Name,_Address,_city,true);
    
         }
}