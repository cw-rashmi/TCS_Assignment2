pragma solidity ^0.5.1;
contract Employee{
    struct EmployeeDetails{
    uint  Employee_Id;
    string Employee_Name;
    string Address;
    string city;
    bool exists;
    }
    
     //On addition of new Employee the EmployeeId is incremented by one.
    uint public EmployeeId=0;
    
    //getEmployeeById is a transact that returns the details of the Employee 
    mapping(uint=>EmployeeDetails) public getEmployeeById;
    
    //transact to add new Employee
    function add_employee(string memory _Student_Name,string memory _Address,string memory _city)public{
     EmployeeId++;
     getEmployeeById[EmployeeId]=EmployeeDetails(EmployeeId,_Student_Name,_Address,_city,true);
    }
    
    //transact to update the existing Employee with the ID
    function update_employee(uint id,string memory _Student_Name,string memory _Address,string memory _city)public{
        
        //to check if the Employee with the given ID exist
        require(getEmployeeById[id].exists);
               
        //the details of the Employee with the ID given as the input is oerwritten with the new details.
        getEmployeeById[id]=EmployeeDetails(id,_Student_Name,_Address,_city,true);
    
         }
}