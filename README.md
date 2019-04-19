# TCS Assignment 2
The assignment on the smart contract

This repository contains the code for smart contract created using Ethereum Blockchain, Remix IDE and Solidity language.

## Prerequisites:
* The Remix IDE open in any brower(Chrome with the earliest version is recommended)
* Constant Internet connection

## 1. StudentDetails Smart Contract:
The new students can be added and the existing students can be fetched with their ID's. One can even update the details of existing students.


## 2. EmployeeDetails Smart Contract:
The new employees and their details can be added and existing employee details can be fetched with their Employee ID's. One can even update te details of existing employees with their ID via the transact called update_employee.


## 3. StudentDepartmentDetails
* The new student can be added with the method called add_student.
* The details of the existing students can be updated using update_student transact. 
* The new department can be added using add-department transact.
* The details of the existing deparment can also be altered using the updae_department transact.
* One can fetch details of all student belonging to the same department via a transact called get_student_by_department


## 4. BorrowerRequestDetails
* The new borrow request can be created using create request transact.
* The details of existing request can be updated with the update_request transact.
* The validation of the requested amout is made via the require condition which checks if the requested amount is lesser than 10000. If so then only the request is granted else not.
