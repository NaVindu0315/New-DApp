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
    event  Deposit(address indexed _from,uint amount, string _reason, uint _timestamp);
    event  Withdraw(address indexed _to,uint amount, string _reason, uint _timestamp);



    function deposit(uint _amount,string memory _reason)public payable{
        require(_amount >0 ,"Depost amount should be greater than 0");
        transactions.push(Transaction(msg.sender,_amount,_reason,block.timestamp));
        emit Deposit(msg.sender,_amount,_reason,block.timestamp);




    }

    function withdraw(){

    }

    function getBalance(){

    }

    function getTransactionsCount(){

    }

    function getTransaction(){

    }

    function getAllTransactions(){

    }

    function changeOwner(){

    }

}
