pragma solidity ^0.5.1;
contract Borrower{
    enum Status{open,funded,closed}
    struct BorrowerRequest{
        uint requestId;
        address account;
        string borrowerName;
        uint reqAmt;
        string location;
        uint mobile;
    Status status;
    bool exists;
    }
    
    uint maxAmt;
    constructor() public{
        maxAmt=10000;
    }
    //On addition of new request the RequestId is incremented by one.
    uint RequestId=0;
    
     //borrowerRequestDetails is a transact that returns the details of the request 
    mapping(uint=>BorrowerRequest) public borrowerRequestDetails;
    
    //transact to add new request
    function createRequest(string memory borrowerName,uint reqAmt,string memory location,uint mobile) public {
        RequestId++;
        
        //condition to check whether the requested amount is less than or equal to 10000 
        require(reqAmt<=maxAmt);
        borrowerRequestDetails[RequestId]=BorrowerRequest(RequestId,msg.sender,borrowerName,reqAmt,location,mobile,Status.open,true);
    }
    
    //transact to update the request amount
      function updateRequest(uint requestId,string memory borrowerName,uint reqAmt,string memory location,uint mobile) public {
          
        //condition to check whether the request to be updated exists
        require( borrowerRequestDetails[requestId].exists);
        
        //condition to check whether the requested amount is less than or equal to 10000 
        require(reqAmt<=maxAmt);
        borrowerRequestDetails[requestId]=BorrowerRequest(requestId,msg.sender,borrowerName,reqAmt,location,mobile,Status.open,true);
    }
    
    
}