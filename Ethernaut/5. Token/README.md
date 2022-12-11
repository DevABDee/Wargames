### Challenge:
- You have be given 20 Tokens initially. Increase your Acc balance.

### Solution:
- `transfer()` 20+ Tokens to any address, it will make the `uint256` to underflow and will maximise the sender's balance.

### Takeaway:
- Pre-Solidity 0.8.0 - Underflow/Overflow Vulnerablity