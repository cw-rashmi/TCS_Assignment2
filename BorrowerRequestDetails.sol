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
    uint TotalRequests=0;
    mapping(uint=>BorrowerRequest) public borrowerRequestDetails;
    function createRequest(string memory borrowerName,uint reqAmt,string memory location,uint mobile) public {
        TotalRequests++;
        require(reqAmt<=maxAmt);
        borrowerRequestDetails[TotalRequests]=BorrowerRequest(TotalRequests,msg.sender,borrowerName,reqAmt,location,mobile,Status.open,true);
    }
    
      function updateRequest(uint requestId,string memory borrowerName,uint reqAmt,string memory location,uint mobile) public {
          require( borrowerRequestDetails[requestId].exists);
        require(reqAmt<=maxAmt);
        borrowerRequestDetails[requestId]=BorrowerRequest(requestId,msg.sender,borrowerName,reqAmt,location,mobile,Status.open,true);
    }
    
    
}