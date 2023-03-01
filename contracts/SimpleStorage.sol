//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage{
   
    //when uint is not equal to any number, then it gets initialized to zero
    uint256 public favoriteNumber;
    mapping (string=>uint256) public nameToFavoriteNumber;

     struct People {
        uint256 favoriteNumber;
        string name;
    }
    People[] public people;

    function store(uint256 _favoriteNumber) public virtual{
        favoriteNumber= _favoriteNumber;

    }
    // view and pure indicates that there is no change in the blockchain
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
      
        people.push(People( _favoriteNumber, _name));
        nameToFavoriteNumber[_name]= _favoriteNumber;
    }

}

// there are 6 places where to store data (stack, memory, storage, calldata, code, logs)