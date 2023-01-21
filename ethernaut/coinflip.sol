//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.0;

contract MultiCoinFlip {
    event Response(bool success, bytes data);

    uint256 constant FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
 
    constructor(){}

    function getBlockValue() public view returns (uint256) {
        return uint256(blockhash(block.number - 1));
    }
    function getFlipResult() public view returns (bool) {
        return uint256(blockhash(block.number - 1)) / FACTOR == 1;
    }
    function callCoinFlip(address _addr) public {
        bool callData = getFlipResult();
        (bool succ, bytes memory data) = _addr.call(abi.encodeWithSignature("flip(bool)", callData));
        emit Response(succ, data);
    }
}