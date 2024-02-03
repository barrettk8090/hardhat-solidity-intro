pragma solidity ^0.8.0;

//Import the console library - helps with debugging
import "hardhat/console.sol";

//the actual contract. It's a simple greeter contract that stores a string and allows you to change it.
contract Greeter {
    string private greeting;

    //Constructor function which is taking over greeter infomation and storing it in the contract. _greeting is the input
    constructor(string memory _greeting) {
        //Outputs the greeting to the console
        console.log("Deploying a Greeter with greeting:", _greeting);
        //Using what we've passed in to set the greeting, and sharing it back to the greeter smart contract so we can use it in the other functions later on
        greeting = _greeting;
    }

    //A simple function that returns the greeting message
    function greet() public view returns (string memory) {
        return greeting;
    }

    //setGreeting function that takes in a string and sets the greeting to that string
    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        //Newly passed in greeting is set to the greeting variable in the contract so we can use it later on 
        greeting = _greeting;
    }
}