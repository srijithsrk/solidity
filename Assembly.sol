//solidity is a high level language whereas assembly is a low level language
pragma solidity ^0.4.0;
contract Assembly
{
function nativeLoop() public returns(uint r)            //high level language
{
for(uint i = 0; i < 10 ;i++)
{
r++;
}
}
function assemblyLoop() public returns(uint _r)        //assembly language
{
assembly
{
let i := 0 
loop : 
i := add(1,i)
_r := add(1,_r)
jumpi(loop, lt(i,10))
}
}
function nativeCondition(uint v) public returns(uint r)    //high level
{
if(v=5)
{
return 55;
}
if(v=6)
{
return 66;
}
return 11;
}
function asmCond(uint v) public returns(uint _r)  //assembly
{
assembly
{
switch _v
case 5
{
_r:= 55
}
case 5
{
_r:= 66
}
default 
{
_r:= 11
}
}
}
// assembly language consumes less gas when compared to high level language
