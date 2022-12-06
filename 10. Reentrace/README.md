### Challenge:
- The goal of this level is for you to steal all the funds from the contract.

### Vulnerabilities:
- In the Vulnerable Contract `Withdraw()` function, It is doing Interactions first before modifying the state variable like balances.

### Solution:
- Created Attack.sol
- First called `donate()` using `chaaraa()` and deposited 0.001 Ethers.
- Then I called `attack()`, which is further calling `withdraw()` on the vulnerable contract, which returned my 0.001 Ethers and trigerred the `fallback()` which again called the `withdraw()` function. Thats how I was able to drain the whole contract :)

### Takeaway:
- Always use Checks-Effects-Interactions pattern or any Reentrancy Guard.