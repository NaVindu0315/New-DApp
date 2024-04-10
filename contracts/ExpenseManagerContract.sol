// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExpenseManagerContract {

    struct Transaction{
        address  user;
        uint amount;
        string reason;
        uint timestamp;
    }

    constructor(){

    }
}
