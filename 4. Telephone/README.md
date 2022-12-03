### Challenge: 
- Claim ownership of the contract below to complete this level.

### Solution:
- `changeOwner()` func is using `tx.origin` to make sure that the `msg.sender` is not transfering owner to himself.
- `tx.origin` does not do good job in these scenarios.
- If contract A calls B, and B calls C, in C `msg.sender` is B and `tx.origin` is A.
- I called the `changeOwner()` func from the `Attack.sol`. So `msg.sender` was contract `Attack.sol`, & `tx.origin` was my EOA address.

### Takeaway:
- Carefully use `tx.origin`, it can open doors for pishing attacks.