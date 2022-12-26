### Challenge:
The goal of this level is for you to hack the basic DEX contract below and steal the funds by price manipulation.
You will start with 10 tokens of token1 and 10 of token2. The DEX contract starts with 100 of each token.
- You will be successful in this level if you manage to drain all of at least 1 of the 2 tokens from the contract, and allow the contract to report a "bad" price of the assets.

### Vulnerabilities:
- `swap()` function is calculating `swapAmount` wrong. In DEXs, to calculate swap Amount we always should consider calculating it using `x * y = k` or use any price oracle.