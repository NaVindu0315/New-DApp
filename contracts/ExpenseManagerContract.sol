// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExpenseManagerContract {


    address public owner;

    struct Transaction{
        address  user;
        uint amount;
        string reason;
        uint timestamp;
    }

    Transaction[] public transactions;

    constructor(){

        owner = msg.sender;

    }

    mapping(address =>uint) public balances;

    event  Depositevent(address indexed _from,uint amount, string _reason, uint _timestamp);
    event  Withdraw(address indexed _to,uint amount, string _reason, uint _timestamp);



    function deposit(uint _amount,string memory _reason)public payable{
        require(_amount >0 ,"Depost amount should be greater than 0");
        balances[msg.sender]+= amount;
        transactions.push(Transaction(msg.sender,_amount,_reason,block.timestamp));
        emit Depositevent(msg.sender,_amount,_reason,block.timestamp);
    }

    function withdraw(uint _amount,string memory _reason) public{
        require(balances[msg.sender]>= _amount,"Insufficent Balance");
        balances[msg.sender] -= _amount;
        transactions.push(Transaction(msg.sender,_amount,_reason,block.timestamp));
        payable(msg.sender).transfer(_amount);
        emit withdraw(msg.sender,_reason,block.timestamp);
    }

    function getBalance(address _account) public view returns (uint ){

        return balances[_account];

    }

    function getTransactionsCount() public view returns (unit){
        return transactions.length;

    }

    function getTransaction(uint _index) public view returns(address,uint,string memory,uint){
        require(_index<transactions.length, "Index out of bounds");
        Transaction memory transaction = transactions[_index];
        return (transactions.user,transaction.amount,transaction.reason,transaction.timestamp);

    }

    function getAllTransactions() public view returns(address[] memory,uint[] memory, string[] memory, uint[] memory ){
        address [] memory users = new address[](transactions.length);
        uint [] memory amounts = new uint[](transactions.length);
        string [] memory reasons = new address[](transactions.length);
    }

    function changeOwner(){

    }

}
