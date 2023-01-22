// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Delegation {
    event CalledDelegation(bool success);
    function callDelegation(address _addr) external {
        (bool succ,) = _addr.call(abi.encodeWithSignature("pwn()"));
        emit CalledDelegation(succ);
    }
}