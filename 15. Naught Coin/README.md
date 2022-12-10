### Challenge:
- NaughtCoin is an ERC20 token and you're already holding all of them. The catch is that you'll only be able to transfer them after a 10 year lockout period. Can you figure out how to get them out to another address so that you can transfer them freely? Complete this level by getting your token balance to 0.

### Solution:
- `transfer()` is not the only way we can transfer ERC20 Tokens, we can use `transferFrom()` to achieve the same task. To use `transferFrom()` we need to give `allowance` to the contract first.