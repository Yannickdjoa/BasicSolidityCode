//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage{
    //+5
    //override and virtual (in order to verride a function you need to add virtual to the initial/imported function)
    
    function store(uint256 _favoriteNumber) public override {
       favoriteNumber= _favoriteNumber + 5;
    }

}