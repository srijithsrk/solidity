// Transferring ether between contracts
pragma solidity ^0.4.0;
{
contract EtherTransferTo
{
function () public payable 
{
}
function getBalance () public returns(uint)
{
return address(this).balance;
}

contract EtherTransferFrom   //this contract transfers ether to contract EtherTransferTo 
{
EtherTransferTo private _instance;
function EtherTransferFrom () public
{
_instance = new EtherTransferTo();
}
function getBalance () public returns(uint)
{
return address(this).balance;
}
function getBalanceOfInstance() public returns (uint)
{
return address(_instance).balance;
}
function () public payable
{
address(_instance).transfer(msg.value);
}
}
