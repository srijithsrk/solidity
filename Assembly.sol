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
}
