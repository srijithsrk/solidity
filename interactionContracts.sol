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

