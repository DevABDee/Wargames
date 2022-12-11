### Challenge:
1. claim ownership of the contract
2. reduce its balance to 0

### My Solution:
1. call contribute() and gets added into the contribitions list
2. send Ethers to the contract (sendTransaction()) to trigger recieve and become the new owner
3. call withdraw()