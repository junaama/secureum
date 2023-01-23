private variables are not really private.
can read from the contract storage

...getStorageAt(contract.address, 1)
convert result from bytes32 to string/ascii