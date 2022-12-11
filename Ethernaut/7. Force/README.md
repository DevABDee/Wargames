### Challenge:
- Some contracts will simply not take your money.
- The goal of this level is to make the balance of the contract greater

### Solution:
- Created an other contract Attack.sol.
- Deposited some ethers in it.
- `selfdestruct()` that contract (Attack.sol), passing in the address of the Force.sol contract. 

### Takeaway:
- Don't rely on address(this).balance