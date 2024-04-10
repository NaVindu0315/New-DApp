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

    constructor(){

        owner = msg.sender;

    }

    function deposit(){

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
