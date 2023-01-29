[Q1] In transferFrom(), unchecked is not used in the allowance subtraction:
(A): To save gas
**(B):** To avoid unauthorized transfers
**(C):** To avoid reentrancy
(D): None of the above
[Q2] In transfer() and transferFrom(), the use of unchecked would not be desired:
**(A):** When the token uses large number of decimals
(B): When the token uses small number of decimals
(C): At all times
(D): At no times
[Q3] In name() and symbol(), the returned values are incorrect because:
(A): The string encoding is too short
(B): Inline assembly return does not leave the function
**(C):** MSTORE does not fill all bytes until 0x5f and function may return junk at the end
(D): The code always reverts
[Q4] To correct name(), one could make the following change(s):
(A): 
assembly {
          mstore(0x20, 0x20)
          mstore(0x48, 0x0843616c6c6261636b)
          return(0x20, 0x60)
       }

**(B): **
function name() external pure returns (string memory n) { n = "Callback"; }

(C): 
return "Callback";

(D): None of the above
[Q5] The concern(s) with the check in notify() is/are:
(A): Selector 0x00000000 is the fallback function
(B): Selector 0x00000000 is the receive function
**(C):** Selector 0x00000000 is possible in which case a valid callback would not be called
(D): Selector can never be 0x00000000, so the check is useless
[Q6] The concern(s) with the call in notify() is/are:
(A): The call always reverts
**(B):** The passed function pointer is internal and therefore not accessible via an external call
(C): One should always use try/catch in external calls
(D): The called contract may not have the called function selector thus falling through to fallback or reverting the transfer
[Q7] Potential change(s) to notify() to mitigate further security concern(s) is/are:
(A): Enforce the callback call to use delegatecall
**(B):** Enforce the callback call to use staticcall
(C): Send Ether to the called contract
(D): Make the call in inline assembly
[Q8] How can the contract be exploited for loss-of-funds via notify callback reentrancy?
(A): During the callback, while being the sender of a transfer, repeat the transfer
(B): During the callback, while being the recipient of a transfer, call transfer again in the token contract sending the tokens back to the original sender
**(C): **During the callback, while being the recipient of a transfer, burn the received tokens
(D): This cannot happen in this contract

notes: 5 c bc minter or burner can be 0

Score: 3.5/8 :sob: