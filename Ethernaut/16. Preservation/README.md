### Challenge:
This contract utilizes a library to store two different times for two different timezones. The constructor creates two instances of the library for each time to be stored.

- The goal of this level is for you to claim ownership of the instance you are given.

### Vulnerabilities:
- Contract Using `Delegatecall` and does not have same storage layouts.

### Solution:
Really loved solving this :)
- As storage layouts for Preservation and library Contracts were not same, I took an advantage to update the timeZone1Library address to my Attack contract's address.
- Made sure that Attack.sol & Preservation.sol have same storage layout.
- Then in Attack.sol I created `setTime()` function which updates the `owner` address.

### Takeaway:
- Use `DelegateCall` carefully. Make sure that the storage layouts are the same.
- Use `library` for libraries not contracts.