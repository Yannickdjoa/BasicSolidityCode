//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

contract StorageFactory{
     SimpleStorage[] public simpleStorageArray;
    
    function createSimpleStorageContract() public{
        //how does StorageFactory knows what simpleStorage looks like? just by copy pasting the simpleStorage code or simply by importing it.
       SimpleStorage simpleStorage= new SimpleStorage();
       simpleStorageArray.push(simpleStorage);

    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
       //address
       //ABI = is data imported from the contract we are deploying under current contract
       // we can make this code simpler by removing the initial variables (SimpleStorage simpleStorage= simpleStorageArray[_simpleStorageIndex]; simpleStorage.store(_simpleStorageNumber);)
       simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        // same as above (SimpleStorage simpleStorage= simpleStorageArray[_simpleStorageIndex]; return simpleStorage.retrieve();)
        return simpleStorageArray[_simpleStorageIndex].retrieve();

    }

}