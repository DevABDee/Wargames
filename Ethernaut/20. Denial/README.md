### Challenge:
This is a simple wallet that drips funds over time. You can withdraw the funds slowly by becoming a withdrawing partner.
- If you can deny the owner from withdrawing funds when they call withdraw() (whilst the contract still has funds, and the transaction is of 1M gas or less) you will win this level.

### Vulnerability:
-  external call to an unknown contract. 

### Solution:
- as the `withdraw()` is calling an external contract without specifying any gas limit, I created a contract with a `recieve()` function. Which will recieve ethers and then gonna trigger an ~infinite loop, that will revert the transaction always. That way owner will never gonna be able to withdraw anything.