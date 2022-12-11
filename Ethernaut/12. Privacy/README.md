### Challenge:
- The creator of this contract was careful enough to protect the sensitive areas of its storage.
- Unlock this contract to beat the level.

### Solution:
- Get the storage slot 5 using `getStorageAt()`.
- Turned that `bytes32` into `bytes16`

### Takeaway:
- Nothing in the ethereum blockchain is private. The keyword private is merely an artificial construct of the Solidity language.