// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Elections  {
    //State Variables
    address payable public owner;
    string public name = "Election";
    string public constant symbol = "ELC";
    string public constant version = "0.1"; 
    uint public peopleCounter = 0;

    constructor() payable {
        owner = payable(msg.sender);
    }

    //Enums 
    enum ElectionStatus{
        PENDING, FINISHED, NOTSTARTED
    }

    // Struct
    struct Person{
        address owner; 
        uint nationalID;
        uint validator;
    }
    struct Election{
        address owner;
        string name;
        bool[] votes;
        uint threshold;
        uint maxDays;
        ElectionStatus status;  
    }
    Person[] public peoples;
    Election[] public elections;
    mapping (address => bool[]) bollets;

    //uint8  public constant decimals = 18;


    //Events

    //Modifiers
    //modifier onlyOwner()
    //Functions
    function addPerson(uint _nationalID,uint _validator) public {
        peoples[peopleCounter] = Person(msg.sender, _nationalID, _validator);
        peopleCounter++;
    }


}