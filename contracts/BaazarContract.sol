pragma solidity ^0.4.2;
contract BaazarContract {
  address public owner;
  mapping (address => uint) balances;

  function BaazarContract() {
      /*balance = 1000;*/
      owner = msg.sender;
      balances[owner] = 1000;
  }
  // ERC Token standerd 20 transfer
  function transfer(address _to, uint256 _value) returns (bool success){
    if(balances[msg.sender] < _value) {
      return false;
    }
    balances[msg.sender] -= _value;
    balances[_to] += _value;
    return true;
  }
  // ERC Token standerd 20 transferFrom
  function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    if(balances[_from] < _value) {
      return false;
    }
    balances[_from] -= _value;
    balances[_to] += _value;
    return true;
  }
    // ERC Token standerd 20 balanceOf
  function balanceOf(address _owner) constant returns (uint256 balance){
    return balances[_owner];
  }
}
