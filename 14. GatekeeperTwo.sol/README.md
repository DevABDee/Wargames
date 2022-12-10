### Challenge:
- Make it past the gatekeeper and register as an entrant to pass this level.

### Solution:
Really enjoyed this one. 

- Gate 1:
EOA accounts not allowed.

- Gate 2: 
Contracts not allowed to enter.

Yes, One Says you cannot enter using a EOA account and the other one says you cannot enter as a Contract :D

To pass both of these gates, We need to create a contract and call `enter()` during contract initializitaion (in the constructor). During contract initializitaion, contract's code size is always 0.

- Gate 3:
Looks pretty scary but very easy.
See how simple is finding A from this equation: `5 + A = 55`.
So, finding the `_gateKey` should be simple as well from this eq: `uint64(bytes8(keccak256(abi.encodePacked(msg.sender)))) ^ uint64(_gateKey) == type(uint64).max`

Get the Key and enter as an entrant :)

### Takeaway:
- How to bypass contract zero size checks.
- Solidity's XOR ( ^ ) Bitwise Operation.