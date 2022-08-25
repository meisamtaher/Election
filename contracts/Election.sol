// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Referandoms  {
    //State Variables
    string public name = "Election";
    string public constant symbol = "ELC";
    string public constant version = "0.1"; 
    uint public peopleCounter = 0;

    //Enums 

    enum Vote{
        YES, NO
    }
    enum Stats{
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
        Vote[] votes;
        uint threshold;
        uint maxDays;  
    }
    Person[] public peoples;
    Election[] public elections;
    mapping (address)
    mapping (address => Vote[]) bollets;

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