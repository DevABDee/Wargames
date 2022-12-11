### Challenge:
- Make it past the gatekeeper and register as an entrant to pass this level.

### Solution:
Oufff!! This was a really hard one ngl xD

- Gate 1:
Pretty Easy, as we have dealt with this kind of situation before as well in the Telephone Challenge.
In a nutshell it simply says or requires that EOA account not allowed so we have to create an contract to interact with the Target Contract, to make sure the `tx.origin` is our EOA account and `msg.sender` is the contract's address.

- Gate 2:
This was Pretty Hard and annoying tbh, It requires that the remaining gas's modulo to 8191 should be equal to Zero.
First I tried to put some random `gas` values but it was not working and then I did some reserch and found that we have to bruce force it. Therefore, I created a loop and as the `enter()` returns a boolean. So I just made sure that until and unless it returns a `true` the loop should not break, and it worked :)

- Gate 3:
To pass this final gate, we need to input a `_gateKey` which should fulfill all the three checks.
From the 3rd require statement, we can see that the `_gateKey` is look alike to our EOA Account address. So, We convert our EOA address into bytes8 and then add `(2 ** 32)` to generate a `key` which satisfies all the three require statments.

- And then just Attack to become an entrant :)