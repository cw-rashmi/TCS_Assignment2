pragma solidity ^0.5.1;
contract Employee{
    struct EmployeeDetails{
    uint  Employee_Id;
    string Employee_Name;
    string Address;
    string city;
    bool exists;
    }
    uint public TotalEmp=0;
    mapping(uint=>EmployeeDetails) public getEmployeeById;
    function add(string memory _Student_Name,string memory _Address,string memory _city)public{
     TotalEmp++;
     getEmployeeById[TotalEmp]=EmployeeDetails(TotalEmp,_Student_Name,_Address,_city,true);
    }
    function update(uint id,string memory _Student_Name,string memory _Address,string memory _city)public{
        require(getEmployeeById[id].exists);
               getEmployeeById[id]=EmployeeDetails(id,_Student_Name,_Address,_city,true);
    
         }
}