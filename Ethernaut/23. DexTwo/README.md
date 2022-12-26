### Challenge:
This level will ask you to break DexTwo, a subtlely modified Dex contract from the previous level, in a different way.
- You need to drain all balances of token1 and token2 from the DexTwo contract to succeed in this level.

You will still start with 10 tokens of token1 and 10 of token2. The DEX contract still starts with 100 of each token.

### Solution:
- In the `swap()` function, token Address Checks are missing. 
- We can deploy a new token or two new tokens. And mint some on our address and also mint some on the dex address (as a liquidity). 
- After that we can easily perform two swaps on both of the tokens to drain them. 

### Takeaway:
- If you design a DEX where anyone could list their own tokens without the permission of a central authority, then the correctness of the DEX could depend on the interaction of the DEX contract and the token contracts being traded.