pragma solidity ^0.5.1;
contract Student_Department{
    struct DepartmentDetails{
        uint DepartmentID;
        string DeaprtmentName;
        string staff;
        bool exists;
            }
    struct StudentDetails{
        uint StudentId;
        string StudentName;
        uint DepartmentId;
        string Address;
        string city;
        bool exists;
        
    }
    
    uint public TotalStduents=0;
    uint public TotalDepartments=0;
    
    //getStudentById is the transact that returns the Student details by id
    mapping(uint=>StudentDetails) public getStudentById;
    
    //getDepartmentById is the transactthat returns the Department details by id
    mapping(uint=>DepartmentDetails) public getDepartmentById;
    
    //getStudInDep is the transact that returns the student details by the DepartmentId
    mapping(uint=> mapping(uint=>StudentDetails)) public getStudInDep;
    
    //to add new Department Details
     function addDept(string memory DeptName,string memory _staff) public {
        TotalDepartments++;
         getDepartmentById[TotalDepartments]=DepartmentDetails(TotalDepartments,DeptName,_staff,true);
     }
     
     //to add new Student Details
      function addStud(string memory StuName,uint DeptId,string memory Add,string memory city) public {
          TotalStduents++;
         getStudentById[TotalStduents]=StudentDetails(TotalStduents,StuName,DeptId,Add,city,true);
          require(getDepartmentById[DeptId].exists);
            getStudInDep[DeptId][TotalStduents]=StudentDetails(TotalStduents,StuName,DeptId,Add,city,true);
        
     }
     
     //to update the existting Student Details
       function updateStudent(uint id,string memory _Student_Name,uint DeptId,string memory _Address,string memory _city)public{
         require(getStudentById[id].exists);
               getStudentById[id]=StudentDetails(id,_Student_Name,DeptId,_Address,_city,true);
               require(getDepartmentById[DeptId].exists);
               getStudInDep[DeptId][id]=StudentDetails(id,_Student_Name,DeptId,_Address,_city,true);
    
         }
  
  
    
}