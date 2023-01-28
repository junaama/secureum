pragma solidity >=0.8.0;

contract King {
    constructor(address payable _to) payable{
        (bool success,) = _to.call{value: msg.value}("");
        require(success, "didnt become king");
    }
}